console.log('init.js is LOADED');

var isConfigured = initStorage.isConfigured();
var isAdmin = false;
/* --- UI Handling START ---- */

var inputInitAdminCode = $('#in-init-admin-code');
var inputInitUserCode = $('#in-init-user-code');
var inputInitAnyCode = $('#in-init-any-code');
var btnInitContinue = $('#btn-init-continue');
var viewInitNew = $('#init-view-entry-new');
var viewInitExist = $('#init-view-entry-exist');

// INITIALIZE
initView();
inputInitAdminCode.pincodeInput({inputs:6});
inputInitUserCode.pincodeInput({inputs:6});
inputInitAnyCode.pincodeInput({inputs:6});

// EVENTS
btnInitContinue.on('click', function() {
  if (isConfigured) {
    if (inputInitAnyCode.val().length < 6) {
      alert("Passcode please!");
    } else {
      if (initStorage.isAdminPasscode(inputInitAnyCode.val())) { // ADMIN
        isAdmin = true;
        database_Init();
        view_process_Init();
        view_connections_Init();
        $('.section-header').show();
        $('.section-main').show();
        $('#preload').hide();
        $('#headerTabs button[id="home-tab"]').tab('show');
        $('#headerTabs button[id="process-tab"]').show();
        $('#headerTabs button[id="connections-tab"]').show();
        $('#headerTabs button[id="settings-tab"]').show();
      } else if (initStorage.isUserPasscode(inputInitAnyCode.val())) { // USER
        isAdmin = false;
        database_Init();
        view_process_Init();
        view_connections_Init();
        $('.section-header').show();
        $('.section-main').show();
        $('#preload').hide();
        $('#headerTabs button[id="home-tab"]').tab('show');
        $('#headerTabs button[id="process-tab"]').hide();
        $('#headerTabs button[id="connections-tab"]').hide();
        $('#headerTabs button[id="settings-tab"]').hide();
      } else {
        alert("Wrong passcode!");
      }
    }
  } else {
    if (inputInitAdminCode.val().length < 6 || inputInitUserCode.val().length < 6) {
      alert("All Passcodes are required.");
    } else {
      initStorage.setPasscode(inputInitAdminCode.val(), inputInitUserCode.val())
      database_Init();
      $('.section-header').show();
      $('.section-main').show();
      $('#preload').hide();
      $('#headerTabs button[id="connections-tab"]').tab('show');
      $('#headerTabs button[id="process-tab"]').show();
      $('#headerTabs button[id="connections-tab"]').show();
      $('#headerTabs button[id="settings-tab"]').show();
    }
  }
  
  /*
  database_Init();
  $('.section-header').show();
  $('.section-main').show();
  $('#preload').hide();
  $('#headerTabs button[id="home-tab"]').tab('show');
  $('#headerTabs button[id="process-tab"]').hide();
  $('#headerTabs button[id="connections-tab"]').hide();
  */
})

window.onkeydown = function(event) {
  // console.log(event);
  if (event.isTrusted && event.key == "" && event.code == "" ) {
    console.log("window.onkeydown reset page")
    initView();
  }
}

function initView() {
  $('.section-header').hide();
  $('.section-main').hide();

  if (isConfigured) {
    viewInitNew.hide();
    viewInitExist.show();
  } else {
    viewInitNew.show();
    viewInitExist.hide();
  }

  $('#preload').show();

  inputInitAdminCode.val("");
  inputInitUserCode.val("");
  inputInitAnyCode.val("");

  $(".pincode-input-text").val("");
}
/* --- UI Handling END ------ */