/*$.ajax("https://processotrainee.firebaseio.com/users/0.json", {
	success: function(data){
		console.log(data);
		dado = data;
	},
	error:function(){
		console.log("error");
	}
});
*/
$(document).ready(function() {
  var color;

  $.ajax("https://processotrainee.firebaseio.com/example.json", {
    success: function(data) {
      color = data.color
    },
    error: function() {
      console.log("Error");
    }
  });

  $(".theBox").click(function() {
    $(this).css("background-color", color);
  });
});


/*
$(document).ready(function(){

	var color;

	$.ajax ("https://processotrainee.firebaseio.com/example.json", {
		success: function (data){
			color = data.color
		},
		error: function() {
			console.log("error");
		}
	});

	$(".theBox").click( function () {
		$(this).css("background-color", color);
	});
});
*/