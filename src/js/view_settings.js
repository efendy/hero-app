console.log('view_settings.js is LOADED');


/* --- UI Handling START ---- */

var btnSettingsSavedConnection = $("#btn-settings-saved-connections");
var btnSettingsCopySettings = $("#btn-settings-copy-settings");
var btnSettingsPasscodes = $("#btn-settings-passcodes");

// INITIALIZE

// EVENTS
btnSettingsSavedConnection.on("click", function() {
  if (confirm("Deleting save connections.")) {
    masterStorage.reset();
    sourceStorage.reset();
    destinationStorage.reset();
  }
});
btnSettingsCopySettings.on("click", function() {
  if (confirm("Resetting saved auto-copy settings to default.")) {
    appProcess.resetAutoCopySettings();
  }
});
btnSettingsPasscodes.on("click", function() {
  if (confirm("Removing admin and user passcodes.")) {
    initStorage.reset();
  }
});

/* --- UI Handling END ------ */