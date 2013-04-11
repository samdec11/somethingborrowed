$(function(){
  $(".item").hover(overlay, regular);
});

function overlay()
{
  var div = $("<div>").addClass("item_hover");
  var a = $("<a>");
  a.attr("href", "/items/"+$(this).data().id);
  a.text($(this).data().owner+"'s "+$(this).data().name);
  div.append(a);
  $(this).append(div);
}

function regular()
{
  $(this).children().last().remove();

}