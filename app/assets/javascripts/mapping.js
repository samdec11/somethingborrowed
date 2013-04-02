var map;
var init_marker;
var infowindow;



$(document).ready(function(){
});


function display_map(lat, lng, zoom)
{
  var mapOptions = {
    center: new google.maps.LatLng(lat, lng),
    zoom: zoom,
    mapTypeId: google.maps.MapTypeId.ROADMAP

  };
  var canvas = $('#map_canvas')[0];
  map = new google.maps.Map(canvas, mapOptions);
}


function add_marker(lat, lng, title, content1)
{
  var latlng = new google.maps.LatLng(lat, lng);
  var marker = new google.maps.Marker({position: latlng, map: map, title: title});
  var contentString = '<div class="row" id="infowindow">'+
    '<div class="small-5 columns">'+
    '<h1>'+content1.name+'</h1>'+
    // '<img src="'+content1.image+'>"' +
    '</div>'+
    '<div class="small-7 columns">'+
    '<p>Owner: '+content1.owner+'</p>'+
    '<p>Location: '+content1.location+'</p>'+
    '<p>Available Until: '+content1.availability+'</p>'+
    '</div>'+
    '</div>';
  marker.info = new google.maps.InfoWindow({
    content: contentString
  });
  google.maps.event.addListener(marker, 'click', function(){marker.info.open(map, marker);});
}

function add_init_marker(lat, lng, title)
{
  var latlng = new google.maps.LatLng(lat, lng);
  init_marker = new google.maps.Marker({position: latlng, map: map, title: title, animation: google.maps.Animation.DROP, icon: "http://www.teawamutu.co.nz/town/2/images/icons/iconMe_N.png"});
}
