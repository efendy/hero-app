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
var btnCopySave = $('#btn-process-copy-save');

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

console.log("autoCopySettings",appProcess.getAutoCopySettings());
process_ReloadAutoCopySettings();

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
btnCopySave.on("click", function() {
  let queryStatement = "";
  // SELECTED PAYMENT METHOD
  let selectedPaymentMethods = [];
  $('.form-check-input').each(function() {
    if (this.id.startsWith("check-process-copy-payment-")) {
      if (this.checked) {
        selectedPaymentMethods.push(this.value);
      }
    }
  });
  console.log(selectedPaymentMethods);

  // NOMINAL CONDITION
  let selectedNominalCondition = $('#select-process-copy-nominal-condition').val();
  let selectedNominalValue = $('#in-process-copy-nominal').val();
  if (selectedNominalValue > 0) {
    console.log(selectedNominalCondition, selectedNominalValue);
  }

  // BILL PER DAY
  let selectedBillPerDay = $('#in-process-copy-bill-per-day').val();
  if (selectedBillPerDay > 0) {
    console.log(selectedBillPerDay);
  }
  
  // BILL NUMBER PATTERN
  let selectedBillPattern = $('#select-process-copy-bill-pattern').val();
  if (selectedBillPattern != "all") {
    console.log(selectedBillPattern);
  }

  appProcess.saveAutoCopySettings(
    selectedPaymentMethods,
    selectedNominalCondition,
    selectedNominalValue,
    selectedBillPerDay,
    selectedBillPattern
  );
})

// DATA LIST
function process_ReloadPaymentMethodSelection(paymentMethodMap) {
  let autoCopySettings = appProcess.getAutoCopySettings();
  var paymentMethods = autoCopySettings.paymentMethods;

  selectCopyPaymentMethod.empty();
  paymentMethodMap.forEach(function(value, key) {
    var $formCheck = $("<div/>", {
      class: "form-check"
    });
    var $checkInput = $("<input/>", {
      class: "form-check-input",
      id: "check-process-copy-payment-" + key,
      type: "checkbox",
      value: value
    });
    if (paymentMethods.includes(value)) {
      $checkInput.attr('checked', true);
    }
    var $checkLabel = $("<label/>", {
      class: "form-check-label",
      for: "check-process-copy-payment-" + key,
      text: value
    });
    $formCheck.append($checkInput);
    $formCheck.append($checkLabel);
    selectCopyPaymentMethod.append($formCheck);
  });
}

function process_ReloadAutoCopySettings() {
  let autoCopySettings = appProcess.getAutoCopySettings();

  var nominalCondition = autoCopySettings.nominalCondition;
  var nominalValue = autoCopySettings.nominalValue;
  let billPerDay = autoCopySettings.billPerDay;
  let billPattern = autoCopySettings.billPattern;

  $('#select-process-copy-nominal-condition').val(nominalCondition);
  $('#in-process-copy-nominal').val(nominalValue);
  $('#in-process-copy-bill-per-day').val(billPerDay);
  $('#select-process-copy-bill-pattern').val(billPattern);
}
/* --- UI Handling END ------ */
