console.log('view_process.js is LOADED');

var appProcess = new ProcessStorage();

var BACKGROUND_PROCESS_DELAY = 2000;
var isAutoCopyInProgress = false;

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
$('#datepicker-process-start').datepicker({
  uiLibrary: 'bootstrap4',
  format: 'yyyy-mm-dd',
  locale: 'en-us',
  showOtherMonths: false,
  maxDate: new Date(),
});
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
  global_FooterMessage("Start Sync from Master");
  process_StartBackgroundProcessSyncMaster();
});
btnProcessSyncStop.on("click", function() {
  btnProcessSyncStop.hide();
  btnProcessSyncStart.show();
});
btnProcessCopyStart.on("click", function() {
  btnProcessCopyStart.hide();
  btnProcessCopyStop.show();
  global_FooterMessage("Start Auto Copy");
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
    global_FooterMessage("Stop Sync from Master");
  }
}

function process_StartBackgroundProcessAutoCopy() {
  // console.log('process_StartBackgroundProcessAutoCopy() btnProcessCopyStart.isHidden?', btnProcessCopyStart.is(":hidden"));
  if (btnProcessCopyStart.is(":hidden")) {
    process_InitAutoCopyFromSourceToDestination();
    setTimeout(process_StartBackgroundProcessAutoCopy, BACKGROUND_PROCESS_DELAY);
  } else {
    global_FooterMessage("Stop Auto Copy");
  }
}

function process_InitAutoCopyFromSourceToDestination() {
  // Check LAST record salesDateOut from destinationDb.t_sales
  if (!isAutoCopyInProgress) {
    isAutoCopyInProgress = true;
    destinationDb.query(`
      SELECT concat(date_format(salesDateOut,'%Y-%m-%d')) AS last_salesDateOut
      FROM t_sales WHERE salesDateOut=(SELECT MAX(salesDateOut) FROM t_sales)
    `, function (error, results, fields) {
      if (error) {
        isAutoCopyInProgress = false;
        alert("AutoCopy Connecting to Destination Getting last record\nError:\n" + error.message);
      }
      if (fields) {
        // console.log("database_InitSyncDataFromMaster() destinationDb","FIELDS",fields);
      }
      if (results) {
        console.log("process_InitAutoCopyFromSourceToDestination() destinationDb", "RESULTS", results);
        let lastSalesDateOut = "";
        if (results.length > 0) {
          lastSalesDateOut = results[0].last_salesDateOut;
          // TODO DELETE all records from lastSalesDateOut before proceed to adding.
          process_ExecuteCopyDataFromSource(lastSalesDateOut);
        } else {
          process_ExecuteCopyDataFromSourceSinceTheBeginning();
        }
      }
    });
  }
}

function process_ExecuteCopyDataFromSourceSinceTheBeginning() {
  // Check FIRST record salesDateOut from sourceDb.t_sales
  sourceDb.query(`
    SELECT concat(date_format(salesDateOut,'%Y-%m-%d')) AS first_salesDateOut
    FROM t_sales LIMIT 1
  `, function (error, results, fields) {
    if (error) {
      isAutoCopyInProgress = false;
      alert("AutoCopy Connecting to Source Getting first record\nError:\n" + error.message);
    }
    if (fields) {
      // console.log("process_ExecuteCopyDataFromSourceSinceTheBeginning() sourceDb","FIELDS",fields);
    }
    if (results) {
      console.log("process_ExecuteCopyDataFromSourceSinceTheBeginning() sourceDb","RESULTS",results);
      let firstSalesDateOut = "";
      if (results.length > 0) {
        firstSalesDateOut = results[0].first_salesDateOut;
        process_ExecuteCopyDataFromSource(firstSalesDateOut);
      } else {
        isAutoCopyInProgress = false;
        global_FooterMessage("No record from Source Db!");
      }
    }
  });
}

// function process_ExecuteCopyDataFromSource(salesDate) {
//   let currentDate = new Date(salesDate);

//   console.log("BEFORE",global_GetFormattedDate(currentDate));
//   currentDate.setDate(currentDate.getDate() + 1)
//   console.log("AFTER",global_GetFormattedDate(currentDate));
//   isAutoCopyInProgress = false;
// }

function process_ExecuteCopyDataFromSource(salesDate) {
  let currentDate = new Date(salesDate);

  let autoCopySettings = appProcess.getAutoCopySettings();
  var paymentMethods = autoCopySettings.paymentMethods;
  var nominalCondition = autoCopySettings.nominalCondition;
  var nominalValue = autoCopySettings.nominalValue;
  let billPattern = autoCopySettings.billPattern;
  let billPerDay = autoCopySettings.billPerDay;

  let queryStatement = "";
  let whereStatement = [];
  let limitStatement = "";

  whereStatement.push(`Payment_Method IN ('${paymentMethods.join("','")}') `);
  if (nominalValue > 0) {
    whereStatement.push(`Amount ${nominalCondition} ${nominalValue} `);
  }
  if (billPattern == "odd") {
    whereStatement.push(`MOD(RIGHT(Sales_No,1),2) = 1 `);
  } else if (billPattern == "even") {
    whereStatement.push(`MOD(RIGHT(Sales_No,1),2) = 0 `);
  }
  whereStatement.push(`salesDateOut >= '${global_GetFormattedDate(currentDate)} 00:00:00' `);
  whereStatement.push(`salesDateOut <= '${global_GetFormattedDate(currentDate)} 23:59:59' `);
  if (billPerDay > 0) {
    limitStatement = `LIMIT ${billPerDay} `;
  }

  queryStatement = `SELECT 
    Sales_No,
    Tanggal_Trx,
    concat(date_format(salesDateOut,'%Y-%m-%d'),' ',date_format(salesDateOut,'%T')) AS Sales_DateOut,
    Payment_Method,
    Subtotal,
    Service_Charge,
    Tax,
    Amount,
    concat(date_format(SaleDate,'%Y-%m-%d'),' ',date_format(SaleDate,'%T')) AS Sale_Date,
    OutletCode,
    OutletName,
    ShopID
  FROM t_sales WHERE ` + whereStatement.join('AND ') + limitStatement;
  global_FooterMessage(queryStatement);

  sourceDb.query(queryStatement, function(error, results) {
    if (error) {
      isAutoCopyInProgress = false;
      alert(`AutoCopy Getting ${global_GetFormattedDate(currentDate)} records from SourceDb\nError:\n${error.message}`);
    }
    if (results) {
      currentDate.setDate(currentDate.getDate() + 1)
      if (results.length > 0) {
        // INSERT
        destinationDb.query(process_InsertDestination(results), function(error, results) {
          if (error) {
            isAutoCopyInProgress = false;
            alert(`AutoCopy INSERTING ${global_GetFormattedDate(currentDate)} records to DestinationDb\nError:\n${error.message}`);
          }
          if (results) {
            // console.log("Copy INSERT to Destination", results)
            process_ExecuteCopyDataFromSource(global_GetFormattedDate(currentDate));
          }
        });
        // process_ExecuteCopyDataFromSource(global_GetFormattedDate(currentDate));
      } else {
        if (currentDate > (new Date())) {
          isAutoCopyInProgress = false;
          // COMPLETE copy until recent.
        } else {
          process_ExecuteCopyDataFromSource(global_GetFormattedDate(currentDate));
        }
      }
    }
  });
}

//  INSERT IGNORE INTO ()
function process_InsertDestination(results) {
  console.log(results);
  let insertStatement = `
    INSERT IGNORE INTO t_sales (
      Sales_No,
      Receipt_No,
      Tanggal_Trx,
      salesDateOut,
      Payment_Method,
      Subtotal,
      Service_Charge,
      Tax,
      Amount,
      SaleDate,
      OutletCode,
      OutletName,
      ShopID
    ) VALUES `;
  let valueStatement = []
  for (i = 0; i < results.length; i++) {
    valueStatement.push(`(
      '${results[i].Sales_No}',
      '',
      '${results[i].Tanggal_Trx}',
      '${results[i].Sales_DateOut}',
      '${results[i].Payment_Method}',
      '${results[i].Subtotal}',
      '${results[i].Service_Charge}',
      '${results[i].Tax}',
      '${results[i].Amount}',
      '${results[i].Sale_Date}',
      '${results[i].OutletCode}',
      '${results[i].OutletName}',
      '${results[i].ShopID}'
    )`);
  }
  insertStatement += valueStatement.join(",");
  return insertStatement;
}