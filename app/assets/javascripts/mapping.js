var map;
var init_marker;
var infowindow;
var contentString = '<div id="content">'+
    '<div id="siteNotice">'+
    '</div>'+
    '<h1 id="firstHeading" class="firstHeading">Blender</h1>'+
    '<div id="bodyContent">'+
    '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>'+
    '</div>'+
    '</div>';


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
  infowindow = new google.maps.InfoWindow({content: contentString});
}


function add_marker(lat, lng, title)
{
  var latlng = new google.maps.LatLng(lat, lng);
  var marker = new google.maps.Marker({position: latlng, map: map, title: title});
  marker.info = new google.maps.InfoWindow({
    content: title
  });
  google.maps.event.addListener(marker, 'click', function(){marker.info.open(map, marker);});
}

function add_init_marker(lat, lng, title)
{
  var latlng = new google.maps.LatLng(lat, lng);
  init_marker = new google.maps.Marker({position: latlng, map: map, title: title, animation: google.maps.Animation.DROP, icon: "http://www.teawamutu.co.nz/town/2/images/icons/iconMe_N.png"});
}
