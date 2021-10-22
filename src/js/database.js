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

// masterDb.createTable('user_tmp', function (error, results, fields) {
//   if (error) {
//     alert("Error: \n" + error.message);
//   }
//   if (results) {
//     console.log("createTable()","RESULTS",results);
//     masterDb.insertUser('Henny','Susanti', function (error, results, fields) {
//       if (error) {
//         alert("Error: \n" + error.message);
//       }
//       if (fields) {
//         console.log("insertUser()","FIELDS",fields);
//       }
//       if (results) {
//         console.log("insertUser()","RESULTS",results);
//         masterDb.selectUser(function (error, results, fields) {
//           if (error) {
//             alert("Error: \n" + error.message);
//           }
//           if (fields) {
//             console.log("selectUser()","FIELDS",fields);
//           }
//           if (results) {
//             console.log("selectUser()","RESULTS",results);
//           }
//         });
//       }
//     });
//   }
// });

function syncPaymentMethod() {
  masterDb.query('SELECT paymentMethodID,paymentMethodName FROM `ms_paymentmethod`', function (error, results, fields) {
    if (error) {
      alert("Error: \n" + error.message);
    }
    if (fields) {
      console.log("loadPaymentMethod()","FIELDS",fields);
    }
    if (results) {
      console.log("loadPaymentMethod()","RESULTS",results);
      reloadPaymentMethodList(results);
    }
  });
}


/* INITIALIZE */
syncPaymentMethod();
