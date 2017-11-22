document.addEventListener('DOMContentLoaded', function (event) {
	console.log('THE DOM is ready');

	var myButton = document.getElementById('my-button');
	myButton.addEventListener('click', function (event) {
		console.log('HELLLP');

	});
});