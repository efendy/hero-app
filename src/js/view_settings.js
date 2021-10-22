console.log('view_settings.js is READY');

// init
const targetStorages = new Map([
  ["master", masterStorage],
  ["source", sourceStorage],
  ["destination", destinationStorage]
]);
cancelSettings()

document.getElementById('btn-settings-master-pass').onclick = function() { toggleShowPassword('master') }
document.getElementById('btn-settings-source-pass').onclick = function() { toggleShowPassword('source') }
document.getElementById('btn-settings-destination-pass').onclick = function() { toggleShowPassword('destination') }

document.getElementById('btn-settings-master-test').onclick = function() { testConnection('in-settings-master') };
document.getElementById('btn-settings-source-test').onclick = function() { testConnection('in-settings-source') };
document.getElementById('btn-settings-destination-test').onclick = function() { testConnection('in-settings-destination') };

document.getElementById('btn-settings-save').onclick = function() { saveSettings() };
document.getElementById('btn-settings-cancel').onclick = function() { cancelSettings() };

function toggleShowPassword(target) {
  console.log('call toggleShowPassword');
  let inSettingsPass = document.getElementById('in-settings-'+target+'-pass');
  let iconSettingsShowPass = document.getElementById('icon-settings-'+target+'-pass-show');
  let iconSettingsHidePass = document.getElementById('icon-settings-'+target+'-pass-hide');

  iconSettingsShowPass.classList.remove("d-none");
  iconSettingsHidePass.classList.remove("d-none");
  if (inSettingsPass.type == "text") {
    inSettingsPass.type = "password";
    iconSettingsShowPass.style.display = "none";
    iconSettingsHidePass.style.display = "inline-block";
  } else {
    inSettingsPass.type = "text";
    iconSettingsShowPass.style.display = "inline-block";
    iconSettingsHidePass.style.display = "none";
  }
}

function saveSettings() {
  console.log('call saveSettings');
  for (const [target, storage] of targetStorages.entries()) {
    let inSettingsHost = document.getElementById('in-settings-'+target+'-host');
    let inSettingsPort = document.getElementById('in-settings-'+target+'-port');
    let inSettingsUser = document.getElementById('in-settings-'+target+'-user');
    let inSettingsPass = document.getElementById('in-settings-'+target+'-pass');
    let inSettingsDb = document.getElementById('in-settings-'+target+'-db');

    if (inSettingsHost.value == "") {
      inSettingsHost.value = "127.0.0.1"
    }
    if (inSettingsPort.value == "") {
      inSettingsPort.value = "3306"
    }
    // NOT REQUIRED AT THE MOMENT
    // if (inSettingsUser.value == "") {
    //   return "ERR: user name cannot has spaces and special characters"
    // }
    // if (inSettingsPass.value == "") {
    //   return "ERR: "
    // }
    // if (inSettingsDb.value == "") {
    //   return "ERR: db name cannot has spaces and special characters"
    // }

    storage.store(
      inSettingsHost.value, 
      inSettingsPort.value, 
      inSettingsUser.value,
      inSettingsPass.value,
      inSettingsDb.value
    )
  }
  console.log('saveSettings - Success');
}

function cancelSettings() {
  console.log('call cancelSettings');
  for (const [target, storage] of targetStorages.entries()) {
    let inSettingsHost = document.getElementById('in-settings-'+target+'-host');
    let inSettingsPort = document.getElementById('in-settings-'+target+'-port');
    let inSettingsUser = document.getElementById('in-settings-'+target+'-user');
    let inSettingsPass = document.getElementById('in-settings-'+target+'-pass');
    let inSettingsDb = document.getElementById('in-settings-'+target+'-db');
    
    inSettingsHost.value = storage.host();
    inSettingsPort.value = storage.port();
    inSettingsUser.value = storage.user();
    inSettingsPass.value = storage.pass();
    inSettingsDb.value = storage.database();
  }
}

function testConnection(prefix) {
  console.log('call testConnection');
  let inSettingsHost = document.getElementById(prefix+'-host');
  let inSettingsPort = document.getElementById(prefix+'-port');
  let inSettingsUser = document.getElementById(prefix+'-user');
  let inSettingsPass = document.getElementById(prefix+'-pass');
  let inSettingsDb = document.getElementById(prefix+'-db');

  // Add the credentials to access your database
  let connection = mysql.createConnection({
    host     : inSettingsHost.value,
    port     : parseInt(inSettingsPort.value),
    user     : inSettingsUser.value,
    password : inSettingsPass.value,
    database : inSettingsDb.value
  });

  loading.show();
  // connect to mysql
  connection.connect(function(err) {
    loading.hide();
    if (err) {
      alert("Connection Failed: \n" + err.message);
    } else {
      alert("Connection Success");
    }
    console.log('connected as id:',connection.threadId,'state:',connection.state);
    connection.end();
  });
}