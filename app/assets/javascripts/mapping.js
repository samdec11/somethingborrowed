$(function(){

});

var map;

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

function add_marker(lat, lng, title)
{
  var latlng = new google.maps.LatLng(lat, lng);
  var marker = new google.maps.Marker({position: latlng, map: map, title: title});
}

function add_init_marker(lat, lng, title)
{
  var latlng = new google.maps.LatLng(lat, lng);
  var marker = new google.maps.Marker({position: latlng, map: map, title: title, animation: google.maps.Animation.DROP, icon: "http://www.teawamutu.co.nz/town/2/images/icons/iconMe_N.png"});
}


