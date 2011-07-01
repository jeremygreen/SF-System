// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


jQuery(function($) {
	
  $(".button").mousedown(function() {
	$(this).css("background-color", "#777");
  });

  $(".button").hover(function() {
	$(this).css("background-color", "#999");
	$(this).css("color", "#fff");
  },
  function() {
	$(this).css("background-color", "#eee");
    $(this).css("color", "#333");
  });

  // when the #customer field changes
  $("#movement_customer_id").change(function() {
	
    var override_rate = $('#movement_override_rate').val()

    if(override_rate == '') {
    // make a POST call and replace the content if no override
	  var movement = $(''#movement_id'').val();
      var customer = $('select#movement_customer_id :selected').val();
      var movement_type = $('select#movement_movement_type_id :selected').val();
      var load = $('select#movement_load_id :selected').val();
 
      jQuery.post('/movements/updaterate/' + movement + '/' + customer + '/' + movement_type + '/'+ load, function(data){
	    $("#curr_rate").javascript(data);
      })
    }
    return false;
  });

  // when the #movement_type field changes
  $("#movement_movement_type_id").change(function() {
    // make a POST call and replace the content
    var customer = $('select#movement_customer_id :selected').val();
    var movement_type = $('select#movement_movement_type_id :selected').val();
    var load = $('select#movement_load_id :selected').val();
 
    jQuery.post('/movements/updaterate/' + customer + '/' + movement_type + '/'+ load, function(data){
        $("#curr_rate").js(data);
    })
    return false;
  });

  // when the #load field changes
  $("#movement_load_id").change(function() {
    // make a POST call and replace the content
    var customer = $('select#movement_customer_id :selected').val();
    var movement_type = $('select#movement_movement_type_id :selected').val();
    var load = $('select#movement_load_id :selected').val();
 
    jQuery.post('/movements/updaterate/' + customer + '/' + movement_type + '/'+ load, function(data){
        $("#curr_rate").js(data);
    })
    return false;
  });

  // when the #load field changes
  $("#movement_override_rate").keyup(function() {
	
	var override_rate = $("#movement_override_rate").val();
	if(override_rate == '') {

      // make a POST call and replace the content
      var customer = $('select#movement_customer_id :selected').val();
      var movement_type = $('select#movement_movement_type_id :selected').val();
      var load = $('select#movement_load_id :selected').val();
 
      jQuery.post('/movements/updaterate/' + customer + '/' + movement_type + '/'+ load, function(data){
          $("#curr_rate").js(data);
      })
    }
    else
    {
	    $('#rate_value').replaceWith('0');
    }
    return false;
  });
})