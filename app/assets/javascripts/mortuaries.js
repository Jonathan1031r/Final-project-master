// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("turbolinks:load", function (){
	// $("body").on("click", function (event){
		
		$(".mortuary-modal-sm").modal("show")
	// });
});

$(document).on("turbolinks:load", function (){
	$(".js-mortuary-btn").on("click", function(event){
		navigator.geolocation.getCurrentPosition( getPosition, handleError);
	});

function getPosition(zip){
	var lat = position.coords.latitude;
	var lng = position.coords.longitude;

	var location = `<img src="https://maps.googleapis.com/maps/api/staticmap?center= ${lat},${lng} &size=640x400&zoom=17" id="map">`
		$("body").html(location)
	}
});





function handleError(error){
	console.log("Error getting position")
	console.log(error);
};