$(function(){
  $(".item").hover(overlay, regular);
});

function overlay()
{
  $(this).children().first().remove();
  var div = $("<div>");
  div.css("background", "black");
  div.css("color", "white");
  div.css("width", "100px").css("height", "100px");
  var a = $("<a>");
  a.attr("href", "/items/"+$(this).data().id);
  a.text($(this).data().name);
  var p = $("<p>");
  p.text($(this).data().description);
  div.append(a).append(p);
  $(this).append(div);
}

function regular()
{
  $(this).children().last().remove();
  var a = $("<a>");
  a.attr("href", "/items/"+$(this).data().id);
  var img = $("<img>").attr("src", $(this).data().image).css("width", "100px").css("height", "100px");
  a.append(img);
  $(this).append(a);

}