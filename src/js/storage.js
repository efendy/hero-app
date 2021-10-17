const storage = require('electron-localstorage');
console.log('LOADED storage.js');

class Storage {
  constructor(target) {
    this.target = target;
    // this.storage = storage;
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

var masterStorage = new Storage("master");
var sourceStorage = new Storage("source");
var destinationStorage = new Storage("destination");
