console.log('view_home.js is READY');

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
      value: key,
      text: value
    });
    $('#dropdown-home-payment-method').append($option);
  });
  $('#dropdown-home-payment-method').selectpicker('refresh');
}

/* FILTER - BUTTON */
document.getElementById("btn-home-filter").onclick = function() {
  console.log("click!",this);
  let dateStart = $("#datepicker-home-start").val();
  let dateEnd = $("#datepicker-home-end").val();
  let payment = $("#dropdown-home-payment-method").val();
  console.log(dateStart, dateEnd, payment);

  //SELECT * FROM `table` 
  // WHERE date_column >= '2014-01-01' AND date_column <= '2015-01-01' AND payment_method IN (,);
  let queryStatement = "SELECT * FROM `table`";
  let whereStatement = [];
  if (dateStart) {
    whereStatement.push("date_column >= '"+dateStart+"'");
  }
  if (dateEnd) {
    whereStatement.push("date_column <= '"+dateEnd+"'");
  }
  if (payment.length > 0) {
    whereStatement.push("payment_method IN ('"+payment.join("','")+"')");
  }
  if (whereStatement.length > 0) {
    queryStatement += " WHERE " + whereStatement.join("AND");
  }
  console.log(queryStatement);
}

/* RESULT - TABLE */
applySelectAllEvents("source");
applySelectAllEvents("destination");
applySelectItemEvents("source");
applySelectItemEvents("destination");

function applySelectAllEvents(target) {
  // console.log("applySelectAllEvents:",target);
  document.getElementsByClassName("select-"+target+"-all")[0].onclick = function() { 
    // console.log("select-"+target+"-all checked?",this.checked);
    let items = document.getElementsByClassName("select-"+target+"-item");
    for (var i=0; i < items.length; i++) {
      items[i].checked = this.checked;
    }
  };
}

function applySelectItemEvents(target) {
  console.log("applySelectItemEvents:",target);
  let selectItems = document.getElementsByClassName("select-"+target+"-item");
  for (var i=0; i < selectItems.length; i++) {
    selectItems[i].onclick = function() {
      document.getElementsByClassName("select-"+target+"-all")[0].checked = false;
    }
  }
}