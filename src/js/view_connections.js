console.log('view_connections.js is LOADED');

const targetStorages = new Map([
  ["master", masterStorage],
  ["source", sourceStorage],
  ["destination", destinationStorage]
]);

// INITIALIZE
function view_connections_Init() {
  cancelConnections()
}

// EVENTS
document.getElementById('btn-connections-master-pass').onclick = function() { toggleShowPassword('master') }
document.getElementById('btn-connections-source-pass').onclick = function() { toggleShowPassword('source') }
document.getElementById('btn-connections-destination-pass').onclick = function() { toggleShowPassword('destination') }

document.getElementById('btn-connections-master-test').onclick = function() { testConnection('in-connections-master') };
document.getElementById('btn-connections-source-test').onclick = function() { testConnection('in-connections-source') };
document.getElementById('btn-connections-destination-test').onclick = function() { testConnection('in-connections-destination') };

document.getElementById('btn-connections-save').onclick = function() { saveConnections() };
document.getElementById('btn-connections-cancel').onclick = function() { cancelConnections() };

function toggleShowPassword(target) {
  console.log('call toggleShowPassword');
  let inConnectionsPass = document.getElementById('in-connections-'+target+'-pass');
  let iconConnectionsShowPass = document.getElementById('icon-connections-'+target+'-pass-show');
  let iconConnectionsHidePass = document.getElementById('icon-connections-'+target+'-pass-hide');

  iconConnectionsShowPass.classList.remove("d-none");
  iconConnectionsHidePass.classList.remove("d-none");
  if (inConnectionsPass.type == "text") {
    inConnectionsPass.type = "password";
    iconConnectionsShowPass.style.display = "none";
    iconConnectionsHidePass.style.display = "inline-block";
  } else {
    inConnectionsPass.type = "text";
    iconConnectionsShowPass.style.display = "inline-block";
    iconConnectionsHidePass.style.display = "none";
  }
}

function saveConnections() {
  for (const [target, storage] of targetStorages.entries()) {
    let inConnectionsHost = document.getElementById('in-connections-'+target+'-host');
    let inConnectionsPort = document.getElementById('in-connections-'+target+'-port');
    let inConnectionsUser = document.getElementById('in-connections-'+target+'-user');
    let inConnectionsPass = document.getElementById('in-connections-'+target+'-pass');
    let inConnectionsDb = document.getElementById('in-connections-'+target+'-db');

    if (inConnectionsHost.value == "") {
      inConnectionsHost.value = "127.0.0.1"
    }
    if (inConnectionsPort.value == "") {
      inConnectionsPort.value = "3306"
    }
    // NOT REQUIRED AT THE MOMENT
    // if (inConnectionsUser.value == "") {
    //   return "ERR: user name cannot has spaces and special characters"
    // }
    // if (inConnectionsPass.value == "") {
    //   return "ERR: "
    // }
    // if (inConnectionsDb.value == "") {
    //   return "ERR: db name cannot has spaces and special characters"
    // }

    storage.store(
      inConnectionsHost.value, 
      inConnectionsPort.value, 
      inConnectionsUser.value,
      inConnectionsPass.value,
      inConnectionsDb.value
    )
  }
  console.log('saveConnections - Success');

  database_CreateTableSales(sourceDb);
  database_CreateTableSales(destinationDb);
}

function cancelConnections() {
  for (const [target, storage] of targetStorages.entries()) {
    let inConnectionsHost = document.getElementById('in-connections-'+target+'-host');
    let inConnectionsPort = document.getElementById('in-connections-'+target+'-port');
    let inConnectionsUser = document.getElementById('in-connections-'+target+'-user');
    let inConnectionsPass = document.getElementById('in-connections-'+target+'-pass');
    let inConnectionsDb = document.getElementById('in-connections-'+target+'-db');
    
    inConnectionsHost.value = storage.host();
    inConnectionsPort.value = storage.port();
    inConnectionsUser.value = storage.user();
    inConnectionsPass.value = storage.pass();
    inConnectionsDb.value = storage.database();
  }
}

function testConnection(prefix) {
  console.log('call testConnection');
  let inConnectionsHost = document.getElementById(prefix+'-host');
  let inConnectionsPort = document.getElementById(prefix+'-port');
  let inConnectionsUser = document.getElementById(prefix+'-user');
  let inConnectionsPass = document.getElementById(prefix+'-pass');
  let inConnectionsDb = document.getElementById(prefix+'-db');

  // Add the credentials to access your database
  let connection = mysql.createConnection({
    host     : inConnectionsHost.value,
    port     : parseInt(inConnectionsPort.value),
    user     : inConnectionsUser.value,
    password : inConnectionsPass.value,
    database : inConnectionsDb.value
  });

  loading.show();
  // connect to mysql
  connection.connect(function(err) {
    loading.hide();
    if (err) {
      alert("Connection Failed ("+prefix+"): \n" + err.message);
    } else {
      alert("Connection Success");
    }
    console.log('connected as id:',connection.threadId,'state:',connection.state);
    connection.end();
  });
}