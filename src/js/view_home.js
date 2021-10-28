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

var btnHomeSearchFilter = $("#btn-home-search-filter");
var btnHomeSearchClear = $("#btn-home-search-clear");
var btnHomeTableSourceReload = $("#btn-home-table-source-reload");
var btnHomeTableSourceExport = $("#btn-home-table-source-export");
var btnHomeTableSourceCopy = $("#btn-home-table-source-copy");
var btnHomeTableDestinationReload = $("#btn-home-table-destination-reload");
var btnHomeTableDestinationExport = $("#btn-home-table-destination-export");
var btnHomeTableDestinationDelete = $("#btn-home-table-destination-delete");
var btnHomeTableDestinationAction = $("#btn-home-table-destination-action");
var tableHomeSource = $("#table-home-source")
var tableHomeDestination = $("#table-home-destination")

// INITIALIZE


/* FILTER - DATE RANGE */
var today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate());
$('#datepicker-home-start').datepicker({
  uiLibrary: 'bootstrap4',
  format: 'yyyy-mm-dd',
  locale: 'en-us',
  showOtherMonths: false,
  maxDate: today
});
$('#datepicker-home-end').datepicker({
  uiLibrary: 'bootstrap4',
  format: 'yyyy-mm-dd',
  showOtherMonths: false,
  minDate: function () {
      return $('#datepicker-home-start').val();
  },
  maxDate: today
});

/* FILTER - PAYMENT METHOD */
function home_ReloadPaymentMethodSelection(paymentMethodMap) {
  console.log("home_ReloadPaymentMethodSelection",paymentMethodMap);
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

// EVENTS
btnHomeSearchFilter.on("click", function() {
  console.log("click!",this);
  home_ReloadSourceTable();
  home_ReloadDestinationTable();
});
btnHomeSearchClear.on("click", function() {

});
btnHomeTableSourceReload.on("click", function() {

});
btnHomeTableSourceExport.on("click", function() {

});
btnHomeTableSourceCopy.on("click", function() {

});
btnHomeTableDestinationReload.on("click", function() {

});
btnHomeTableDestinationExport.on("click", function() {

});
btnHomeTableDestinationDelete.on("click", function() {

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
    if (error) {
      alert("home_ReloadSourceTable Error:\n" + error.message);
    }
    if (fields) {
      // console.log("database_SyncPaymentMethod()","FIELDS",fields);
    }
    if (results) {
      console.log("home_ReloadSourceTable()", "RESULTS", results);
      home_PopulateSourceTable(results);
    }
  });
}

function home_ReloadDestinationTable() {
  let queryStatement = home_getFilterQueryStatement();
  destinationDb.query(queryStatement, function (error, results, fields) {
    if (error) {
      alert("home_ReloadDestinationTable Error:\n" + error.message);
    }
    if (fields) {
      // console.log("database_SyncPaymentMethod()","FIELDS",fields);
    }
    if (results) {
      console.log("home_ReloadDestinationTable()", "RESULTS", results);
      home_PopulateDestinationTable(results);
    }
  });
}

function home_PopulateSourceTable(data) {
  tableHomeSource.empty();
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
    $tableTR.append($tableTH);
    $tableTR.append($("<td/>", { text: obj.Sales_No }));
    $tableTR.append($("<td/>", { text: obj.Tanggal_Trx.split(" ")[0] }));
    $tableTR.append($("<td/>", { text: obj.Tanggal_Trx.split(" ")[1] }));
    $tableTR.append($("<td/>", { text: obj.Payment_Method }));
    $tableTR.append($("<td/>", { text: obj.Subtotal }));
    $tableTR.append($("<td/>", { text: obj.Amount }));
    tableHomeSource.append($tableTR);
  });
}

function home_PopulateDestinationTable(data) {
  tableHomeDestination.empty();
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

/* --- UI Handling END ------ */