const localStorage = require('electron-localStorage');
console.log('LOADED storage.js');

class DbStorage {
  constructor(target) {
    this.target = target;
  }
  host() {
    console.log(localStorage);
    return localStorage.getItem(this.target+'-host');
  }
  port() {
    return localStorage.getItem(this.target+'-port');
  }
  user() {
    return localStorage.getItem(this.target+'-user');
  }
  pass() {
    return localStorage.getItem(this.target+'-pass');
  }
  database() {
    return localStorage.getItem(this.target+'-database');
  }
  store(host, port, user, pass, database) {
    localStorage.setItem(this.target+"-host", host);
    localStorage.setItem(this.target+"-port", port);
    localStorage.setItem(this.target+"-user", user);
    localStorage.setItem(this.target+"-pass", pass);
    localStorage.setItem(this.target+"-database", database);
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
  getInitSync() {
    return localStorage.getItem('process-init-start-sync');
  }
  getInitCopy() {
    return localStorage.getItem('process-init-start-copy');
  }
  setInitSync(value) {
    localStorage.setItem('process-init-start-sync', value);
  }
  setInitCopy(value) {
    localStorage.setItem('process-init-start-copy', value);
  }
}