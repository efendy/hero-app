console.log('view_home.js is LOADED');

var home = {
  search: function() {
    if (!sourceConnection.validate()) {
      alert("Source connection is not configured.");
    } else if (!destinationConnection.validate()) {
      alert("Destination connection is not configured.");
    } else {
      // build query

      // search source

      // search destination

    }
  },
  copyFromMaster: function() {

  },
  copyToDestination: function() {

  },
  delete: function() {
    
  },
  init: function() {
    // create table on source
    // create table on destination
    // CREATE TABLE IF NOT EXISTS tbl_transaksi;
  }
}

/* --- UI Handling START ---- */

var spanHomeTotalSourceData = $("#home-source-result-total");
var spanHomeTotalDestinationData = $("#home-destination-result-total");

var btnHomeSearchFilter = $("#btn-home-search-filter");
var btnHomeSearchClear = $("#btn-home-search-clear");
var btnHomeSearchToday = $("#btn-home-search-today");
// var btnHomeTableSourceReload = $("#btn-home-table-source-reload");
var btnHomeTableSourceExport = $("#btn-home-table-source-export");
var btnHomeTableSourceCopy = $("#btn-home-table-source-copy");
// var btnHomeTableDestinationReload = $("#btn-home-table-destination-reload");
var btnHomeTableDestinationExport = $("#btn-home-table-destination-export");
var btnHomeTableDestinationDelete = $("#btn-home-table-destination-delete");
var btnHomeTableDestinationAction = $("#btn-home-table-destination-action");
var tableHomeBodySource = $("#table-home-body-source")
var tableHomeBodyDestination = $("#table-home-body-destination")

// INITIALIZE


/* FILTER - DATE RANGE */
var today = new Date();
console.log(today);
$('#datepicker-home-start').datepicker({
  uiLibrary: 'bootstrap4',
  format: 'yyyy-mm-dd',
  locale: 'en-us',
  showOtherMonths: false,
  maxDate: today,
  value: global_GetTodayDate(),
});
$('#datepicker-home-end').datepicker({
  uiLibrary: 'bootstrap4',
  format: 'yyyy-mm-dd',
  showOtherMonths: false,
  minDate: function () {
      return $('#datepicker-home-start').val();
  },
  maxDate: today,
  value: global_GetTodayDate(),
});

/* FILTER - PAYMENT METHOD */
function home_ReloadPaymentMethodSelection(paymentMethodMap) {
  $('#dropdown-home-payment-method').empty();
  paymentMethodMap.forEach(function(value, key) {
    var $option = $("<option/>", {
      value: value,
      text: value
    });
    $('#dropdown-home-payment-method').append($option);
  });
  $('#dropdown-home-payment-method').selectpicker('refresh');
}

//
// EVENTS
btnHomeSearchFilter.on("click", function() {
  home_ReloadSourceTable();
  home_ReloadDestinationTable();
});
btnHomeSearchClear.on("click", function() {
  $("#datepicker-home-start").val("");
  $("#datepicker-home-end").val("");
  $("#dropdown-home-payment-method").val("");
  $('#dropdown-home-payment-method').selectpicker('refresh');
});
btnHomeSearchToday.on("click", function() {
  $("#datepicker-home-start").val(global_GetTodayDate());
  $("#datepicker-home-end").val(global_GetTodayDate());
  home_ReloadSourceTable();
  home_ReloadDestinationTable();
});
// btnHomeTableSourceReload.on("click", function() {

// });
btnHomeTableSourceExport.on("click", function() {
  home_ExportTable("source");
});
btnHomeTableSourceCopy.on("click", function() {
  let items = document.getElementsByClassName("home-select-source-item");
  let selectedIds = []
  for (var i=0; i < items.length; i++) {
    if (items[i].checked) {
      selectedIds.push(items[i].value)
    }
  }
  console.log(selectedIds)
});
// btnHomeTableDestinationReload.on("click", function() {

// });
btnHomeTableDestinationExport.on("click", function() {
  home_ExportTable("destination");
});
btnHomeTableDestinationDelete.on("click", function() {
  let items = document.getElementsByClassName("home-select-destination-item");
  let selectedIds = []
  for (var i=0; i < items.length; i++) {
    if (items[i].checked) {
      selectedIds.push(items[i].value)
    }
  }
  console.log(selectedIds)
});
btnHomeTableDestinationAction.on("click", function() {
  // lock,unlock,reset bill number
});

// TABLE HANDLING
home_ApplySelectAllEvents("source");
home_ApplySelectAllEvents("destination");
home_ApplySelectItemEvents("source");
home_ApplySelectItemEvents("destination");

function home_ApplySelectAllEvents(target) {
  document.getElementsByClassName("home-select-"+target+"-all")[0].onclick = function() {
    let items = document.getElementsByClassName("home-select-"+target+"-item");
    for (var i=0; i < items.length; i++) {
      items[i].checked = this.checked;
    }
  };
}

function home_ApplySelectItemEvents(target) {
  let selectItems = document.getElementsByClassName("home-select-"+target+"-item");
  for (var i=0; i < selectItems.length; i++) {
    selectItems[i].onclick = function() {
      document.getElementsByClassName("home-select-"+target+"-all")[0].checked = false;
    }
  }
}

function home_ReloadSourceTable() {
  let queryStatement = home_getFilterQueryStatement();
  sourceDb.query(queryStatement, function (error, results, fields) {
    spanHomeTotalDestinationData.text("0");
    if (error) {
      alert("home_ReloadSourceTable Error:\n" + error.message);
    }
    if (fields) {
      // console.log("database_SyncPaymentMethod()","FIELDS",fields);
    }
    if (results) {
      console.log("home_ReloadSourceTable()", "RESULTS", results);
      home_PopulateSourceTable(results);
      spanHomeTotalSourceData.text(`${results.length}`);
    }
  });
}

function home_ReloadDestinationTable() {
  let queryStatement = home_getFilterQueryStatement();
  destinationDb.query(queryStatement, function (error, results, fields) {
    spanHomeTotalDestinationData.text("0");
    if (error) {
      alert("home_ReloadDestinationTable Error:\n" + error.message);
    }
    if (fields) {
      // console.log("database_SyncPaymentMethod()","FIELDS",fields);
    }
    if (results) {
      console.log("home_ReloadDestinationTable()", "RESULTS", results);
      home_PopulateDestinationTable(results);
      spanHomeTotalDestinationData.text(`${results.length}`);
    }
  });
}

function home_PopulateSourceTable(data) {
  tableHomeBodySource.empty();
  $.each(data, function(index, obj) {
    // console.log(obj.Sales_No);
    let $tableTR = $("<tr/>");
    let $tableTH = $("<th/>", {
      scope: "row"
    });
    let $tableINPUT = $("<input/>", {
      class: "form-check-input home-select-source-item",
      type: "checkbox",
      value: obj.Sales_No,
    });
    $tableTH.append($tableINPUT);
    $tableTH.append($("<label/>", { text: obj.Sales_No }));
    $tableTR.append($tableTH);
    // $tableTR.append($("<td/>", { text: obj.Sales_No }));
    $tableTR.append($("<td/>", { text: obj.Tanggal_Trx.split(" ")[0] }));
    $tableTR.append($("<td/>", { text: obj.Tanggal_Trx.split(" ")[1] }));
    $tableTR.append($("<td/>", { text: obj.Payment_Method }));
    $tableTR.append($("<td/>", { text: global_ToNumericThousands(obj.Subtotal.toFixed(2)), class: "text-end" }));
    $tableTR.append($("<td/>", { text: global_ToNumericThousands(obj.Amount.toFixed(2)), class: "text-end" }));
    tableHomeBodySource.append($tableTR);
  });
}

function home_PopulateDestinationTable(data) {
  tableHomeBodyDestination.empty();
  $.each(data, function(index, obj) {
    let $tableTR = $("<tr/>");
    let $tableTH = $("<th/>", {
      scope: "row"
    });
    let $tableINPUT = $("<input/>", {
      class: "form-check-input home-select-destination-item",
      type: "checkbox",
      value: obj.Sales_No,
    });
    $tableTH.append($tableINPUT);
    $tableTH.append($("<label/>", { text: obj.Sales_No }));
    $tableTR.append($tableTH);
    // $tableTR.append($("<td/>", { text: obj.Sales_No }));
    $tableTR.append($("<td/>", { text: obj.Receipt_No }));
    $tableTR.append($("<td/>", { text: obj.Tanggal_Trx.split(" ")[0] }));
    $tableTR.append($("<td/>", { text: obj.Tanggal_Trx.split(" ")[1] }));
    $tableTR.append($("<td/>", { text: obj.Payment_Method }));
    $tableTR.append($("<td/>", { text: global_ToNumericThousands(obj.Subtotal.toFixed(2)), class: "text-end" }));
    $tableTR.append($("<td/>", { text: global_ToNumericThousands(obj.Amount.toFixed(2)), class: "text-end" }));
    tableHomeBodyDestination.append($tableTR);
  });
}

function home_getFilterQueryStatement() {
  let dateStart = $("#datepicker-home-start").val();
  let dateEnd = $("#datepicker-home-end").val();
  let payment = $("#dropdown-home-payment-method").val();
  console.log(dateStart, dateEnd, payment);

  //SELECT * FROM `table` 
  // WHERE date_column >= '2014-01-01' AND date_column <= '2015-01-01' AND payment_method IN (,);
  let queryStatement = "SELECT * FROM `t_sales` ";
  let whereStatement = [];
  if (dateStart) {
    whereStatement.push("salesDateOut >= '"+dateStart+" 00:00:00' ");
  }
  if (dateEnd) {
    whereStatement.push("salesDateOut <= '"+dateEnd+" 23:59:59' ");
  }
  if (payment.length > 0) {
    whereStatement.push("Payment_Method IN ('"+payment.join("','")+"')");
  }
  if (whereStatement.length > 0) {
    queryStatement += "WHERE " + whereStatement.join("AND ");
  }
  console.log("home_getFilterQueryStatement() return ",queryStatement);
  global_FooterMessage(queryStatement);
  return queryStatement;
}

function home_ExportTable(target) {
  // let tableTarget = $("#table-home-"+target);
  let filename = `export-${target}`;
  let downloadLink;
  let dataType = 'application/vnd.ms-excel';
  let tableSelect = document.getElementById(`table-home-${target}`);
  let tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
  
  // Specify file name
  filename = filename?filename+'.xls':'excel_data.xls';
  
  // Create download link element
  downloadLink = document.createElement("a");
  
  document.body.appendChild(downloadLink);
  
  if(navigator.msSaveOrOpenBlob){
      var blob = new Blob(['\ufeff', tableHTML], {
          type: dataType
      });
      navigator.msSaveOrOpenBlob( blob, filename);
  }else{
      // Create a link to the file
      downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
  
      // Setting the file name
      downloadLink.download = filename;
      
      //triggering the function
      downloadLink.click();
  }
}

function exportTableToExcel(tableID, filename = '') {
  var downloadLink;
  var dataType = 'application/vnd.ms-excel';
  var tableSelect = document.getElementById(tableID);
  var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
  
  // Specify file name
  filename = filename?filename+'.xls':'excel_data.xls';
  
  // Create download link element
  downloadLink = document.createElement("a");
  
  document.body.appendChild(downloadLink);
  
  if(navigator.msSaveOrOpenBlob){
      var blob = new Blob(['\ufeff', tableHTML], {
          type: dataType
      });
      navigator.msSaveOrOpenBlob( blob, filename);
  }else{
      // Create a link to the file
      downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
  
      // Setting the file name
      downloadLink.download = filename;
      
      //triggering the function
      downloadLink.click();
  }
}

/* --- UI Handling END ------ */