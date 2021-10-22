console.log('view_process.js is READY');

var appProcess = new ProcessStorage();

function startBackgroundProcess() {
  console.log("call startBackgroundProcess()");
}

/* --- UI Handling START ---- */

var checkInitSync = $("#in-process-init-startup-sync");
var checkInitCopy = $("#in-process-init-startup-copy");
var btnSyncStart = $("#btn-process-sync-start");
var btnSyncStop = $("#btn-process-sync-stop");
var btnCopyStart = $("#btn-process-copy-start");
var btnCopyStop = $("#btn-process-copy-stop");
var selectCopyPaymentMethod = $("#select-process-copy-payment-method");

// INITIALIZE
if (appProcess.getInitSync()) {
  checkInitSync.attr('checked', true);
  btnSyncStart.hide();
  btnSyncStop.show();
} else {
  btnSyncStop.hide();
}
if (appProcess.getInitCopy()) {
  checkInitCopy.attr('checked', true);
  btnCopyStart.hide();
  btnCopyStop.show();
} else {
  btnCopyStop.hide();
}

// EVENTS
checkInitSync.on("change", function() {
  appProcess.setInitSync(this.checked);
});
checkInitCopy.on("change", function() {
  appProcess.setInitCopy(this.checked);
});
btnSyncStart.on("click", function() {
  btnSyncStart.hide();
  btnSyncStop.show();
});
btnSyncStop.on("click", function() {
  btnSyncStop.hide();
  btnSyncStart.show();
});
btnCopyStart.on("click", function() {
  btnCopyStart.hide();
  btnCopyStop.show();
});
btnCopyStop.on("click", function() {
  btnCopyStop.hide();
  btnCopyStart.show();
});

// DATA LIST
function process_ReloadPaymentMethodSelection(paymentMethodMap) {
  selectCopyPaymentMethod.empty();
  paymentMethodMap.forEach(function(value, key) {
    var $option = $("<option/>", {
      value: key,
      text: value
    });
    selectCopyPaymentMethod.append($option);
  });
  // selectCopyPaymentMethod.empty();
  // $.each(paymentMethodList, function(key, value) {
  //   var $option = $("<option/>", {
  //     value: key,
  //     text: value
  //   });
  //   selectCopyPaymentMethod.append($option);
  // });
}
/* --- UI Handling END ------ */
