// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("turbolinks:load", function (){
	$(".mortuary-modal-sm").modal("show")
});

$(document).on("turbolinks:load", function (){
	$(".js-mortuary-btn").on("click", function(event){
		console.log("btn works")
		navigator.geolocation.getCurrentPosition( getPosition, handleError);
	});

function getPosition(zip){
	console.log(zip)
	var lat = zip.coords.latitude;
	var lng = zip.coords.longitude;	
	console.log(lat)
	console.log(lng)
	}
});





function handleError(error){
	console.log("Error getting position")
	console.log(error);
};