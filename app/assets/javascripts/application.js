// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

(function(){
	$(".show-actions-user").click(function(e){
		e.preventDefault();
		$(".cont-actions-user").slideToggle(200);
	});

	$(".active-content-action-pub").click(function(){
		object = $(this).parent(".active-actions-pub");
		if ($(object).find("span").attr("class") === "icon-more-vert active-content-action-pub") {
			$(object).find("span").attr("class","icon-close active-content-action-pub");
		}else{
			$(object).find("span").attr("class","icon-more-vert active-content-action-pub");
		}
		$(object).find(".cont-actions-pub").slideToggle(200);
	});

	setInterval(function(){ 
		$("#alert-success, #alert-danger").animate({
			 opacity: 0
		},600); 
	}, 3000);

			var geo = navigator.geolocation;
			var opciones = {}

			function geo_error() {
				console.log("No puedo saber donde estas.");
			}

			function geo_exito(posicion) {
				var lat  = posicion.coords.latitude;
				var lon  = posicion.coords.longitude;
				var mapa = new Image();
				obtenerGeoInformacion(lat, lon);
			}

			geo.getCurrentPosition(geo_exito, geo_error, opciones);

			var base_url = "http://query.yahooapis.com/v1/public/yql?";

			function obtenerGeoInformacion(lat, lon) {
				var query = 'SELECT * FROM geo.placefinder WHERE text="'+lat+', '+lon+'" AND gflags="R"';
				query = encodeURIComponent(query);

				$.ajax({
					url: base_url+"q="+query,
					dataType : 'jsonp',
					data: {
						format: 'json'
					}
				}).done(function(data){
					var res    = data.query.results.Result;
					var barrio = res.neighborhood;
					var ciudad = res.city;
					var estado = res.state;
					var pais   = res.country;
					var woeid  = res.woeid;
					console.log(estado);
					puerto = window.location.port
					ruta = "http://" + window.location.hostname + ":" + puerto
					var city = ciudad;
					var state = estado;
  					$.get(ruta, {city:city,state:state});
				});
			}

})()