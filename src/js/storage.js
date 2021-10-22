const storage = require('electron-localStorage');
console.log('LOADED storage.js');

class DbStorage {
  constructor(target) {
    this.target = target;
  }
  host() {
    return storage.getItem(this.target+'-host');
  }
  port() {
    return storage.getItem(this.target+'-port');
  }
  user() {
    return storage.getItem(this.target+'-user');
  }
  pass() {
    return storage.getItem(this.target+'-pass');
  }
  database() {
    return storage.getItem(this.target+'-database');
  }
  store(host, port, user, pass, database) {
    storage.setItem(this.target+"-host", host);
    storage.setItem(this.target+"-port", port);
    storage.setItem(this.target+"-user", user);
    storage.setItem(this.target+"-pass", pass);
    storage.setItem(this.target+"-database", database);
  }
  validate() {
    if (this.host() == "" || this.port() == "" || this.user() == "" || this.pass() == "" || this.database() == "") {
      return false
    }
    return true;
  }
}

var masterStorage = new DbStorage("master");
var sourceStorage = new DbStorage("source");
var destinationStorage = new DbStorage("destination");

class ProcessStorage {
  constructor() {
  }
  getInitStart() {
    return storage.getItem('process-init-start');
  }
  setInitStart(value) {
    storage.setItem('process-init-start', value);
  }
  
}