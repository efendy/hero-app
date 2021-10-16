console.log('view_home.js is READY');

$('#datepicker-home-from').datepicker({
  uiLibrary: 'bootstrap'
});
$('#datepicker-home-to').datepicker({
  uiLibrary: 'bootstrap4'
});

applySelectAllEvents(document, "source");
applySelectAllEvents(document, "destination");
applySelectItemEvents(document, "source");
applySelectItemEvents(document, "destination");


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

function applySelectAllEvents(doc, target) {
  // console.log("applySelectAllEvents:",target);
  doc.getElementsByClassName("select-"+target+"-all")[0].onclick = function() { 
    // console.log("select-"+target+"-all checked?",this.checked);
    let items = doc.getElementsByClassName("select-"+target+"-item");
    for (var i=0; i < items.length; i++) {
      items[i].checked = this.checked;
    }
  };
}

function applySelectItemEvents(doc, target) {
  console.log("applySelectItemEvents:",target);
  let selectItems = doc.getElementsByClassName("select-"+target+"-item");
  for (var i=0; i < selectItems.length; i++) {
    selectItems[i].onclick = function() {
      doc.getElementsByClassName("select-"+target+"-all")[0].checked = false;
    }
  }
}