$(document).ready(function(){

var array, i, nomes, opcao;

  $.ajax("https://processotrainee.firebaseio.com/animals.json", {
    success: function(data){
      array = data;
    },
    error: function(){
      console.log("error");
    }
  });

  $("#nomes").change(function(){
    opcao = ($("#nomes option:selected").text());
    if(opcao == "Usuarios"){
      $("#dinamico option").remove();
      for(i=0;i<array.length;i++){
        $("#dinamico").append("<option value="+ array[i].id + ">" + array[i].name + "</option>");
      }
    }
    else{
      $("#dinamico option").remove();
      for(i=0;i<array.length;i++){
        $("#dinamico").append("<option value="+ array[i].id + ">" + array[i].breed + "</option>");
      }
    }
  });
});