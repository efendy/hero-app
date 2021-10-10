const storage = require('electron-localstorage');
console.log('LOADED storage.js');

var sourceConnection = {
  host: function() {
    let rsp = storage.getItem('source-host');
    return rsp;
  },
  port: function() {
    let rsp = storage.getItem('source-port');
    return rsp;
  },
  user: function() {
    let rsp = storage.getItem('source-user');
    return rsp;
  },
  pass: function() {
    let rsp = storage.getItem('source-pass');
    return rsp;
  },
  database: function() {
    let rsp = storage.getItem('source-database');
    return rsp;
  },
  store: function(host, port, user, pass, database) {
    storage.setItem("source-host", host);
    storage.setItem("source-port", port);
    storage.setItem("source-user", user);
    storage.setItem("source-pass", pass);
    storage.setItem("source-database", database);
  },
  validate: function() {
    if (this.host() == "" || this.port() == "" || this.user() == "" || this.pass() == "" || this.database() == "") {
      return false
    }
    return true;
  }
}

var destinationConnection = {
  host: function() {
    let rsp = storage.getItem('destination-host');
    return rsp;
  },
  port: function() {
    let rsp = storage.getItem('destination-port');
    return rsp;
  },
  user: function() {
    let rsp = storage.getItem('destination-user');
    return rsp;
  },
  pass: function() {
    let rsp = storage.getItem('destination-pass');
    return rsp;
  },
  database: function() {
    let rsp = storage.getItem('destination-database');
    return rsp;
  },
  store: function(host, port, user, pass, database) {
    storage.setItem("destination-host", host);
    storage.setItem("destination-port", port);
    storage.setItem("destination-user", user);
    storage.setItem("destination-pass", pass);
    storage.setItem("destination-database", database);
  },
  validate: function() {
    if (this.host() == "" || this.port() == "" || this.user() == "" || this.pass() == "" || this.database() == "") {
      return false
    }
    return true;
  }
}