
$(function () {
	
   	$('#Button').on('click', function(event) {
		 console.log('this is button');
		 var input = $('#input');
		 console.log(input.val());
		 var containerBox = $("<div class=buttonContainer>");
		 containerBox.append($("<li class=element>").text(input.val()));
		 $('#list').append($(containerBox));
		 containerBox.append($("<button class =deleteButton>Remove</button>"));
		 containerBox.append($("<button class =checkbox>Check</button>"));
		 
		 

    });
});


