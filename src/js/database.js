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

  createTable(tableName, callback) {
    let conn = this.connection()
    if (conn) {
      conn.query(
        'CREATE TABLE IF NOT EXISTS `'+tableName+'` (' +
        'id MEDIUMINT NOT NULL AUTO_INCREMENT,' +
        'first_name varchar(255) NOT NULL,' +
        'last_name varchar(255),' +
        'PRIMARY KEY (id)' +
        ')', 
        callback
      );
      conn.end();
    }
  }

  insertUser(firstName, lastName, callback) {
    let conn = this.connection()
    if (conn) {
      conn.query(
        'INSERT INTO `user_tmp` (first_name, last_name) VALUES' +
        '("'+firstName+'","'+lastName+'")' +
        '',
        callback
      );
      conn.end();
    }
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

// Callback Template
// function (error, results, fields) {
//   if (error) {
//     alert("Error: \n" + error.message);
//   }
//   if (results) {
//     console.log("dbCallback()","RESULTS",results);
//   }
//   if (fields) {
//     console.log("dbCallback()","FIELDS",fields);
//   }
// }

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
  let rawQuery = `
  CREATE TABLE IF NOT EXISTS t_sales (
    Sales_No varchar(20) NOT NULL,
    Receipt_No varchar(20) NOT NULL,
    Tanggal_Trx datetime NOT NULL,
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
      alert("Error: \n" + error.message);
    }
    if (fields) {
      console.log("loadPaymentMethod()","FIELDS",fields);
    }
    if (results) {
      console.log("loadPaymentMethod()","RESULTS",results);
    }
  });
}

function database_SyncPaymentMethod() {
  masterDb.query('SELECT paymentMethodID,paymentMethodName FROM `ms_paymentmethod`', function (error, results, fields) {
    if (error) {
      alert("Error: \n" + error.message);
    }
    if (fields) {
      console.log("loadPaymentMethod()","FIELDS",fields);
    }
    if (results) {
      console.log("loadPaymentMethod()","RESULTS",results);
      global_ReloadPaymentMethodList(results);
    }
  });
}

