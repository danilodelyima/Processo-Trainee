$(document).ready(function(){

var array, i, nomes;

  $.ajax("https://processotrainee.firebaseio.com/users.json", {
    success: function(data){
      array = data;
    },
    error: function(){
      console.log("error");
    }
  });

  $("button").click(function(){
    $("button").hide();

    for(i=0;i<array.length;i++)
    {
      $("#nomes").append("<option value="+ array[i].id + ">" + array[i].name + "</option>"
      );}
  });

});