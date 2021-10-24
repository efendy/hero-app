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
$('.section-header').hide();
$('.section-main').hide();
inputInitAdminCode.pincodeInput({inputs:6});
inputInitUserCode.pincodeInput({inputs:6});
inputInitAnyCode.pincodeInput({inputs:6});

if (isConfigured) {
  viewInitNew.hide();
  viewInitExist.show();
} else {
  viewInitNew.show();
  viewInitExist.hide();
}

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
        view_settings_Init();
        $('.section-header').show();
        $('.section-main').show();
        $('#preload').hide();
      } else if (initStorage.isUserPasscode(inputInitAnyCode.val())) { // USER
        isAdmin = false;
        database_Init();
        view_process_Init();
        view_settings_Init();
        $('.section-header').show();
        $('.section-main').show();
        $('#preload').hide();
        $('#headerTabs button[id="home-tab"]').tab('show');
        $('#headerTabs button[id="process-tab"]').hide();
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
      $('#headerTabs button[id="settings-tab"]').tab('show');
    }
  }
  
  /*
  database_Init();
  $('.section-header').show();
  $('.section-main').show();
  $('#preload').hide();
  $('#headerTabs button[id="home-tab"]').tab('show');
  $('#headerTabs button[id="process-tab"]').hide();
  $('#headerTabs button[id="settings-tab"]').hide();
  */
})

/* --- UI Handling END ------ */