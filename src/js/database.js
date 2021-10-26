console.log('database.js is LOADED');

const mysql = require('mysql');

class Database {
  constructor(dbStorage) {
    this.dbStorage = dbStorage;
  }

  connection() {
    if (this.dbStorage.validate()) {
      return mysql.createConnection({
        host     : this.dbStorage.host(),
        port     : parseInt(this.dbStorage.port()),
        user     : this.dbStorage.user(),
        password : this.dbStorage.pass(),
        database : this.dbStorage.database()
      });
    }
    return false;
  }

  query(rawQuery, callback) {
    let conn = this.connection()
    if (conn) {
      conn.query(
        rawQuery,
        callback
      );
      conn.end();
    }
  }
}

var masterDb = new Database(masterStorage);
var sourceDb = new Database(sourceStorage);
var destinationDb = new Database(destinationStorage);

// INITIALIZE
function database_Init() {
  database_SyncPaymentMethod();
  database_CreateTableSales(sourceDb);
  database_CreateTableSales(destinationDb);
}

// FUNCTIONS
function database_CreateTableSales(db) {
  let tableName = "t_sales";
  let rawQuery = `
  CREATE TABLE IF NOT EXISTS ${tableName} (
    Sales_No varchar(20) NOT NULL,
    Receipt_No varchar(20),
    Tanggal_Trx varchar(30) NOT NULL,
    salesDateOut datetime,
    Payment_Method varchar(50),
    Subtotal decimal(20,4) DEFAULT 0,
    Service_Charge decimal(20,4) DEFAULT 0,
    Tax decimal(20,4) DEFAULT 0,
    Amount decimal(21,4) DEFAULT 0,
    SaleDate date,
    OutletCode varchar(20),
    OutletName varchar(50),
    ShopID int(11),
    PRIMARY KEY (Sales_No)
  )
  `;
  db.query(rawQuery, function (error, results, fields) {
    if (error) {
      alert("CreateTable "+tableName+" Error:\n" + error.message);
    }
    if (fields) {
      console.log("database_CreateTableSales()","FIELDS",fields);
    }
    if (results) {
      console.log("database_CreateTableSales()","RESULTS",results);
    }
  });
}

//
// SYNC PAYMENT METHOD FROM MASTER ----
//
function database_SyncPaymentMethod() {
  masterDb.query('SELECT paymentMethodID,paymentMethodName FROM `ms_paymentmethod`', function (error, results, fields) {
    if (error) {
      alert("SyncPaymentMethod Error:\n" + error.message);
    }
    if (fields) {
      // console.log("database_SyncPaymentMethod()","FIELDS",fields);
    }
    if (results) {
      console.log("database_SyncPaymentMethod()","RESULTS",results);
      global_ReloadPaymentMethodList(results);
    }
  });
}

//
// SYNC DATA FROM MASTER TO SOURCE ----
//
function database_InitSyncDataFromMaster() {
  // Check last salesDateOut / Tanggal_Trx from sourceDb.t_sales
  sourceDb.query('SELECT salesDateOut FROM t_sales WHERE salesDateOut=(SELECT MAX(salesDateOut) FROM t_sales)', function (error, results, fields) {
    if (error) {
      alert("SyncDataMaster Connecting to Source\nError:\n" + error.message);
    }
    if (fields) {
      // console.log("database_InitSyncDataFromMaster() sourceDb","FIELDS",fields);
    }
    if (results) {
      console.log("database_InitSyncDataFromMaster() sourceDb","RESULTS",results);
      let whereAfterSalesDateOut = "";
      if (results.length > 0) {
        // Get data from last salesDateOut / Tanggal_Trx
        console.log(results[0].Tanggal_Trx);
        // whereAfterSalesDateOut = `AND a.salesDateOut >= ${results[0].Tanggal_Trx}`;
      } else {
        // Get data from the beginning
      }
      database_ExecuteSyncDataFromMaster(whereAfterSalesDateOut,0);
    }
  });
}

const RANGE = 500;

function database_ExecuteSyncDataFromMaster(whereAfterSalesDateOut, offset) {
  masterDb.query(`
    SELECT 
      coalesce(a.billNum,a.salesNum) AS Sales_No,
      concat(date_format(a.salesDateOut,'%m/%d/%Y'),' ',date_format(a.salesDateOut,'%T')) AS Tanggal_Trx,
      concat(date_format(a.salesDateOut,'%Y-%m-%d'),' ',date_format(a.salesDateOut,'%T')) AS salesDateOut,
      d.paymentMethodName AS Payment_Method,
      a.subtotal AS Subtotal,
      a.otherTaxTotal AS Service_Charge,
      a.vatTotal AS Tax,
      (a.grandTotal - a.roundingTotal) AS Amount,
      concat(date_format(a.salesDate,'%Y-%m-%d'),' ',date_format(a.salesDate,'%T')) AS SaleDate,
      b.branchCode AS OutletCode,
      b.branchName AS OutletName,
      a.branchID AS ShopID 
    FROM 
      (((fnb_pos.tr_saleshead a JOIN fnb_pos.ms_branch b ON(a.branchID = b.branchID)) 
        JOIN fnb_pos.tr_salespayment c ON(a.salesNum = c.salesNum)) 
        JOIN fnb_pos.ms_paymentmethod d ON(c.paymentMethodID = d.paymentMethodID))
    WHERE
      a.branchID = 9 ${whereAfterSalesDateOut}
    ORDER BY 
      a.salesDateOut
    LIMIT
      ${offset}, ${RANGE}
  `, function (error, results, fields) {
    if (error) {
      alert("SyncDataMaster Connecting to Master\nError:\n" + error.message);
    }
    if (fields) {
      // console.log("database_ExecuteSyncDataFromMaster() masterDb","FIELDS",fields);
    }
    if (results) {
      console.log("database_ExecuteSyncDataFromMaster() masterDb","RESULTS",results);
      if (results.length > 0) {
        let insertStatement = `
          INSERT INTO t_sales (
            Sales_No,
            Receipt_No,
            Tanggal_Trx,
            salesDateOut,
            Payment_Method,
            Subtotal,
            Service_Charge,
            Tax,
            Amount,
            SaleDate,
            OutletCode,
            OutletName,
            ShopID
          ) VALUES `
        let valueStatement = []
        for (i = 0; i < results.length; i++) {
          valueStatement.push(`(
            '${results[i].Sales_No}',
            '',
            '${results[i].Tanggal_Trx}',
            '${results[i].salesDateOut}',
            '${results[i].Payment_Method}',
            '${results[i].Subtotal}',
            '${results[i].Service_Charge}',
            '${results[i].Tax}',
            '${results[i].Amount}',
            '${results[i].SaleDate}',
            '${results[i].OutletCode}',
            '${results[i].OutletName}',
            '${results[i].ShopID}'
          )`);
        }
        insertStatement += valueStatement.join(",");
        // console.log(insertStatement);
        sourceDb.query(insertStatement, function(error, results, fields) {
          if (error) {
            alert("SyncDataMaster Connecting to Source\nError:\n" + error.message);
          }
          if (fields) {
            // console.log("database_ExecuteSyncDataFromMaster() sourceDb","FIELDS",fields);
          }
          if (results) {
            database_ExecuteSyncDataFromMaster(whereAfterSalesDateOut, offset+RANGE);
          }
        });
      } else {
        console.log("database_ExecuteSyncDataFromMaster() masterDb COMPLETE");
      }
    }
  });
}

//
// COPY DATA FROM SOURCE TO MASTER ----
//

