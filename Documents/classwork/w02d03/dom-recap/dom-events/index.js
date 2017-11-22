document.addEventListener('DOMContentLoaded', function (event) {

	var myButton = document.getElementById('myButton');
	myButton.addEventListener('click', clickTriggered);

	function clickTriggered (event) {
		console.log(event);
	}

	// form events
	var myForm = document.getElementById('myForm');
	var mySub = document.getElementById('firstname');
	myForm.addEventListener('submit', function (event) {
		event.preventDefault();
		console.log('I have been submitted');
		mySub.value = null;

	});

	// get all the button elements, store them in a variable.
	
	//Create a loop to loop through those elements

	//In each iteration apply an event listener

	//In the event listener, have the console log out the buttons value

	var myButtons = document.getElementsByClassName('myButtons');
	for (var i = 0; i < myButtons.length; i++) {
		myButtons[i].addEventListener('click', function (event) {
			console.log(this.value);
		});

		myButtons[i].addEventListener('mouseover', function (event) {
			console.log(this.style.backgroundColor = 'green');
		});

		myButtons[i].addEventListener('mouseout', function (event) {
			console.log(this.style.backgroundColor = 'white');
		});
	}

});



 
