
var loading = {
  show: function() {
    document.getElementById("overlay-block").style.display = "block";
  },
  hide: function() {
    document.getElementById("overlay-block").style.display = "none";
  }
}

function reloadPaymentMethodList(results) {
  let paymentMethodMap = new Map();
  $.each(results, function(index, object) {
    paymentMethodMap.set(object.paymentMethodID,object.paymentMethodName);
  });

  home_ReloadPaymentMethodSelection(paymentMethodMap);
  process_ReloadPaymentMethodSelection(paymentMethodMap);
}

