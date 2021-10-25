console.log('storage.js is LOADED');
const localStorage = require('electron-localStorage');

class DbStorage {
  constructor(target) {
    this.target = target;
  }
  host() {
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
  reset() {
    localStorage.removeItem(this.target+"-host");
    localStorage.removeItem(this.target+"-port");
    localStorage.removeItem(this.target+"-user");
    localStorage.removeItem(this.target+"-pass");
    localStorage.removeItem(this.target+"-database");
  }
}

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
  saveAutoCopySettings(paymentMethods, nominalCondition, nominalValue, billPerDay, billPattern) {
    localStorage.setItem('process-auto-copy-payment-method', paymentMethods);
    localStorage.setItem('process-auto-copy-nominal-condition', nominalCondition);
    localStorage.setItem('process-auto-copy-nominal-value', nominalValue);
    localStorage.setItem('process-auto-copy-bill-per-day', billPerDay);
    localStorage.setItem('process-auto-copy-bill-pattern', billPattern);
  }
  getAutoCopySettings() {
    let paymentMethods = localStorage.getItem('process-auto-copy-payment-method');
    let nominalCondition = localStorage.getItem('process-auto-copy-nominal-condition');
    let nominalValue = localStorage.getItem('process-auto-copy-nominal-value');
    let billPerDay = localStorage.getItem('process-auto-copy-bill-per-day');
    let billPattern = localStorage.getItem('process-auto-copy-bill-pattern');
    return {
      paymentMethods: paymentMethods?paymentMethods:[],
      nominalCondition: nominalCondition?nominalCondition:"=",
      nominalValue: nominalValue?nominalValue:0,
      billPerDay: billPerDay?billPerDay:0,
      billPattern: billPattern?billPattern:"all"
    }
  }
  resetAutoCopySettings() {
    localStorage.removeItem('process-auto-copy-payment-method');
    localStorage.removeItem('process-auto-copy-nominal-condition');
    localStorage.removeItem('process-auto-copy-nominal-value');
    localStorage.removeItem('process-auto-copy-bill-per-day');
    localStorage.removeItem('process-auto-copy-bill-pattern');
  }
}

class InitStorage {
  constructor() {
  }
  isConfigured() {
    return (
      typeof localStorage.getItem('application-admin-code') !== 'undefined' && 
      localStorage.getItem('application-admin-code') != '' &&
      typeof localStorage.getItem('application-user-code') !== 'undefined' &&
      localStorage.getItem('application-user-code') != ''
    );
  }
  setPasscode(adminPass, userPass) {
    localStorage.setItem('application-admin-code', adminPass);
    localStorage.setItem('application-user-code', userPass);
  }
  isAdminPasscode(value) {
    return (localStorage.getItem('application-admin-code') == value);
  }
  isUserPasscode(value) {
    return (localStorage.getItem('application-user-code') == value);
  }
  reset() {
    localStorage.removeItem('application-admin-code');
    localStorage.removeItem('application-user-code');
  }
}

var masterStorage = new DbStorage("master");
var sourceStorage = new DbStorage("source");
var destinationStorage = new DbStorage("destination");

var initStorage = new InitStorage();