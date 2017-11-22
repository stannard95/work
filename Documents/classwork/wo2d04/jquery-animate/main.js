$(function () {
	console.log('Dom has loaded...');

	var $redball = $('.small-ball');

	$redball.click(function (event) {
		var randomColor = getRandomColor();
		console.log(randomColor);

		$(this).css ({
			backgroundColor: randomColor
		});

	});
});


function getRandomColor() {
  var letters = '0123456789ABCDEF';
  var color = '#';
  for (var i = 0; i < 6; i++) {
    color += letters[Math.floor(Math.random() * 16)];
  }
  return color;
}



function setRandomColor() {
  $("#colorpad").css("background-color", getRandomColor());
}