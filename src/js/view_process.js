console.log('view_process.js is LOADED');

var appProcess = new ProcessStorage();

var BACKGROUND_PROCESS_DELAY = 2000;

/* --- UI Handling START ---- */

var checkProcessInitSync = $("#in-process-init-startup-sync");
var checkProcessInitCopy = $("#in-process-init-startup-copy");
var btnProcessSyncStart = $("#btn-process-sync-start");
var btnProcessSyncStop = $("#btn-process-sync-stop");
var btnProcessCopyStart = $("#btn-process-copy-start");
var btnProcessCopyStop = $("#btn-process-copy-stop");
var selectProcessCopyPaymentMethod = $("#select-process-copy-payment-method");
var btnProcessCopySave = $('#btn-process-copy-save');
var btnProcessCopyCancel = $('#btn-process-copy-cancel');

// INITIALIZE
function view_process_Init() {
  let msg = [];
  if (appProcess.getInitSync()) {
    checkProcessInitSync.attr('checked', true);
    btnProcessSyncStart.hide();
    btnProcessSyncStop.show();
    process_StartBackgroundProcessSyncMaster();
    msg.push("Initiate Sync Master");
  } else {
    btnProcessSyncStop.hide();
  }
  if (appProcess.getInitCopy()) {
    checkProcessInitCopy.attr('checked', true);
    btnProcessCopyStart.hide();
    btnProcessCopyStop.show();
    process_StartBackgroundProcessAutoCopy();
    msg.push("Initiate Auto Copy");
  } else {
    btnProcessCopyStop.hide();
  }
  if (msg.length > 0) {
    global_FooterMessage(msg.join(", "));
  }
  process_ReloadAutoCopySettings();
}

// EVENTS
checkProcessInitSync.on("change", function() {
  appProcess.setInitSync(this.checked);
});
checkProcessInitCopy.on("change", function() {
  appProcess.setInitCopy(this.checked);
});
btnProcessSyncStart.on("click", function() {
  btnProcessSyncStart.hide();
  btnProcessSyncStop.show();
  process_StartBackgroundProcessSyncMaster();
});
btnProcessSyncStop.on("click", function() {
  btnProcessSyncStop.hide();
  btnProcessSyncStart.show();
});
btnProcessCopyStart.on("click", function() {
  btnProcessCopyStart.hide();
  btnProcessCopyStop.show();
  process_StartBackgroundProcessAutoCopy();
});
btnProcessCopyStop.on("click", function() {
  btnProcessCopyStop.hide();
  btnProcessCopyStart.show();
});
btnProcessCopySave.on("click", function() {
  let selectedPaymentMethods = [];
  $('.form-check-input').each(function() {
    if (this.id.startsWith("check-process-copy-payment-")) {
      if (this.checked) {
        selectedPaymentMethods.push(this.value);
      }
    }
  });
  
  // NOMINAL CONDITION
  let selectedNominalCondition = $('#select-process-copy-nominal-condition').val();
  let selectedNominalValue = $('#in-process-copy-nominal').val();
  if (selectedNominalValue == "") {
    $('#in-process-copy-nominal').val(0);
    selectedNominalValue = 0
  }

  // BILL PER DAY
  let selectedBillPerDay = $('#in-process-copy-bill-per-day').val();
  if (selectedBillPerDay == "") {
    $('#in-process-copy-bill-per-day').val(0);
    selectedBillPerDay = 0
  }
  
  // BILL NUMBER PATTERN
  let selectedBillPattern = $('#select-process-copy-bill-pattern').val();

  appProcess.saveAutoCopySettings(
    selectedPaymentMethods,
    selectedNominalCondition,
    selectedNominalValue,
    selectedBillPerDay,
    selectedBillPattern
  );
});
btnProcessCopyCancel.on("click", function() { 
  //
  process_ReloadAutoCopySettings();
  process_ReloadPaymentMethodSelection();
});

// DATA LIST
function process_ReloadPaymentMethodSelection() {
  let autoCopySettings = appProcess.getAutoCopySettings();
  var paymentMethods = autoCopySettings.paymentMethods;

  selectProcessCopyPaymentMethod.empty();
  global_PaymentMethodMap.forEach(function(value, key) {
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
    selectProcessCopyPaymentMethod.append($formCheck);
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

// FUNCTIONS


/* --- UI Handling END ------ */

function process_StartBackgroundProcessSyncMaster() {
  // console.log('process_StartBackgroundProcessSyncMaster() btnProcessSyncStart.isHidden?', btnProcessSyncStart.is(":hidden"));
  if (btnProcessSyncStart.is(":hidden")) {
    database_InitSyncDataFromMaster();
    setTimeout(process_StartBackgroundProcessSyncMaster, BACKGROUND_PROCESS_DELAY);
  } else {
    global_FooterMessage("Stop Sync Master");
  }
}

function process_StartBackgroundProcessAutoCopy() {
  console.log('process_StartBackgroundProcessAutoCopy() btnProcessCopyStart.isHidden?', btnProcessCopyStart.is(":hidden"));
  if (btnProcessCopyStart.is(":hidden")) {
    process_InitAutoCopyFromSourceToDestination();
    setTimeout(process_StartBackgroundProcessAutoCopy, BACKGROUND_PROCESS_DELAY);
  } else {
    global_FooterMessage("Stop Auto Copy");
  }
}

function process_InitAutoCopyFromSourceToDestination() {
  let queryStatement = "SELECT * FROM `t_sales` WHERE ";

  let autoCopySettings = appProcess.getAutoCopySettings();

  var paymentMethods = autoCopySettings.paymentMethods;
  var nominalCondition = autoCopySettings.nominalCondition;
  var nominalValue = autoCopySettings.nominalValue;
  let billPattern = autoCopySettings.billPattern;
  let billPerDay = autoCopySettings.billPerDay;

  let whereStatement = [];

  whereStatement.push(`Payment_Method IN ('${paymentMethods.join("','")}') `);
  if (nominalValue > 0) {
    whereStatement.push(`Amount ${nominalCondition} ${nominalValue} `);
  }
  if (billPattern == "odd") {
    whereStatement.push(`MOD(RIGHT(Sales_No,1),2) = 1 `);
  } else if (billPattern == "even") {
    whereStatement.push(`MOD(RIGHT(Sales_No,1),2) = 0 `);
  }
  global_FooterMessage(queryStatement + whereStatement.join('AND '));
}

function process_GetBillPatternQuery() {
  let rsp = ""
  // BILL NUMBER PATTERN
  let selectedBillPattern = $('#select-process-copy-bill-pattern').val();
  
  return rsp;
}