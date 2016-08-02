// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("turbolinks:load", function (){
	$(".mortuary-modal-sm").modal("show")
});

$(document).on("turbolinks:load", function (){
	$(".js-mortuary-btn").on("click", function(event){
		var zip = $('.zip_code').val();

		google.maps.event.addDomListener(window, "load", initMap(zip));

		$(".mortuary-modal-sm").modal("hide");

	});


	function initMap(zip) {
		var mapDiv = document.getElementById('map');
		var url = "https://maps.googleapis.com/maps/api/geocode/json?address="+zip+"&key=AIzaSyAV8DPFNoqeAUMr2aFHSDMZuEq0kKQJxu0";	
		$.getJSON( url, function( data ){
			var lat = data.results[0].geometry.location.lat;
			var lng = data.results[0].geometry.location.lng;	
			var location = [lat, lng];	
			initializeMap(location);
		});
	}
			
	var map;
	var infowindow;
	var service;

	function initializeMap(location) {
		var latlng = new google.maps.LatLng(location[0], location[1]);
		//console.log(LatLng);
		var myOptions = {
			zoom: 11,
			center: latlng,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};

		map = new google.maps.Map(document.getElementById('map'), myOptions);

		infowindow = new google.maps.InfoWindow();


		service = new google.maps.places.PlacesService(map);
		
		service.nearbySearch({
			location: latlng,
			radius: 100000,
			type: ['funeral_home']
		}, callback);
	}

	function callback(results, status) {
		if (status === google.maps.places.PlacesServiceStatus.OK) {
			for (var i = 0; i < results.length; i++) {
				createMarker(results[i]);
			}
		}
	};

	function createMarker(place) {
		console.log(place);
		var placeLoc = place.geometry.location;
		var marker = new google.maps.Marker({
			map: map,
			position: place.geometry.location
		});

		google.maps.event.addListener(marker, 'click', function() {
			infowindow.setContent(place.name, place.formatted_phone_number);
			//infowindow.setContent(place.address);
			infowindow.open(map, this);
		});
	}
});
