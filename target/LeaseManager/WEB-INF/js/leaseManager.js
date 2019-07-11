/* for addPropertyForm.jsp  */

$( "#propertyType" ).change(function() {
	
  $('#propertySubType').empty(); // clear the current elements in select box
  $('#propertySubType').append($('<option></option>').attr('value','Select').text('Select'));
  
  if($(this).val()=="Residential"){
		$('#propertySubType').append($('<option></option>').attr('value','Condo/Town Hall').text('Condo/Town Hall'));
		$('#propertySubType').append($('<option></option>').attr('value','Multi Family').text('Multi Family'));
		$('#propertySubType').append($('<option></option>').attr('value','Single Family').text('Single Family'));
	}

	if($(this).val()=="Commercial"){
		$('#propertySubType').append($('<option></option>').attr('value','Industrial').text('Industrial'));
		$('#propertySubType').append($('<option></option>').attr('value','Office').text('Office'));
		$('#propertySubType').append($('<option></option>').attr('value','Retail').text('Retail'));
		$('#propertySubType').append($('<option></option>').attr('value','Shopping Center').text('Shopping Center'));
		$('#propertySubType').append($('<option></option>').attr('value','Storage').text('Storage'));
		$('#propertySubType').append($('<option></option>').attr('value','Parking Space').text('Parking Space'));
	}
	
});

$("#country").change(function(){
  $.ajax({
	    url: './states',
	    type: 'POST',
	    data:'country='+ $('#country').val(), 
	    success: function(data) {
	        $('#state').empty(); // clear the current elements in select box
	        $('#state').append($('<option></option>').attr('value','Select').text('Select'));
	        var listOfStates=data.split("|");
	        var i;
	        for (i = 0; i < listOfStates.length; ++i) {
	        	$('#state').append($('<option></option>').attr('value',listOfStates[i]).text(listOfStates[i]));
	        }
	    },
	    error: function(jqXHR, textStatus, errorThrown) {
	        alert(errorThrown);
	    }
	});
});

if($.trim( $('#propertyNameError').html() ).length>0) {
	$(".propertyName").addClass("has-danger");
	$("#propertyNameError").addClass("form-control-feedback");
	
}

if($.trim( $('#propertyTypeError').html() ).length>0) {
	$(".propertyType").addClass("has-danger");
	$("#propertyTypeError").addClass("form-control-feedback");
	
}
