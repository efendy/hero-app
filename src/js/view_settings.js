console.log('view_settings.js is READY');

// init
cancelSettings(document, sourceConnection, destinationConnection)

document.getElementById('btn-settings-source-test').onclick = function() { testConnection(document, 'in-settings-source') };
document.getElementById('btn-settings-destination-test').onclick = function() { testConnection(document, 'in-settings-destination') };
document.getElementById('btn-settings-save').onclick = function() { saveSettings(document, sourceConnection, destinationConnection) };
document.getElementById('btn-settings-cancel').onclick = function() { cancelSettings(document, sourceConnection, destinationConnection) };
document.getElementById('btn-settings-source-pass').onclick = function() { toggleShowPassword('source') }
document.getElementById('btn-settings-destination-pass').onclick = function() { toggleShowPassword('destination') }

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

function saveSettings(doc, sourceConnection, destinationConnection) {
  console.log('call saveSettings');
  let prefixConnections = ['in-settings-source', 'in-settings-destination']
  for (prefix of prefixConnections) {
    let inSettingsHost = doc.getElementById(prefix+'-host');
    let inSettingsPort = doc.getElementById(prefix+'-port');
    let inSettingsUser = doc.getElementById(prefix+'-user');
    let inSettingsPass = doc.getElementById(prefix+'-pass');
    let inSettingsDb = doc.getElementById(prefix+'-db');

    if (inSettingsHost.value == "") {
      return "ERR: "
    }
    if (inSettingsPort.value == "") {
      return "ERR: port has to be numeric"
    }
    if (inSettingsUser.value == "") {
      return "ERR: user name cannot has spaces and special characters"
    }
    if (inSettingsPass.value == "") {
      return "ERR: "
    }
    if (inSettingsDb.value == "") {
      return "ERR: db name cannot has spaces and special characters"
    }

    if (prefix == 'in-settings-source') {
      sourceConnection.store(
        inSettingsHost.value, 
        inSettingsPort.value, 
        inSettingsUser.value,
        inSettingsPass.value,
        inSettingsDb.value
      )
    } else if (prefix == 'in-settings-destination') {
      destinationConnection.store(
        inSettingsHost.value, 
        inSettingsPort.value, 
        inSettingsUser.value,
        inSettingsPass.value,
        inSettingsDb.value
      )
    }
  }
  console.log('saveSettings - Success');
}

function cancelSettings(doc, sourceConnection, destinationConnection) {
  console.log('call cancelSettings');
  let prefixConnections = ['in-settings-source', 'in-settings-destination']
  for (prefix of prefixConnections) {
    let inSettingsHost = doc.getElementById(prefix+'-host');
    let inSettingsPort = doc.getElementById(prefix+'-port');
    let inSettingsUser = doc.getElementById(prefix+'-user');
    let inSettingsPass = doc.getElementById(prefix+'-pass');
    let inSettingsDb = doc.getElementById(prefix+'-db');
    
    inSettingsHost.value = (prefix == 'in-settings-source')? sourceConnection.host() : destinationConnection.host();
    inSettingsPort.value = (prefix == 'in-settings-source')? sourceConnection.port() : destinationConnection.port();
    inSettingsUser.value = (prefix == 'in-settings-source')? sourceConnection.user() : destinationConnection.user();
    inSettingsPass.value = (prefix == 'in-settings-source')? sourceConnection.pass() : destinationConnection.pass();
    inSettingsDb.value = (prefix == 'in-settings-source')? sourceConnection.database() : destinationConnection.database();
  }
}

function testConnection(doc, prefix) {
  console.log('call testConnection');
  let inSettingsHost = doc.getElementById(prefix+'-host');
  let inSettingsPort = doc.getElementById(prefix+'-port');
  let inSettingsUser = doc.getElementById(prefix+'-user');
  let inSettingsPass = doc.getElementById(prefix+'-pass');
  let inSettingsDb = doc.getElementById(prefix+'-db');

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
    console.log('connected as id ' + connection.threadId);
    connection.end();
  });

  // TODO
  // console.log(connection);
  // if (connection.state == "authenticated") {
  //   dialog.showErrorBox({title: "", content: ""});
  // }
}