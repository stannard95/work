$(function () {

	var $redSquare = $('.red-square');
	$('#add-button').on('click', function(event) {
		$redSquare.append('<div class="little-square"></div>');

	});


	var intervalid = setInterval(function () {
		$redSquare.append('<div class="little-square"></div>');
	}, 1500);

	// $('.little-square').click(function (event) {
	// 	$(this).addClass('yellow');
	// });

	$('.red-square').on('click', '.little-square', function (event) {
		var $this = $(this);
		$this.addClass('yellow');

		setTimeout(function () {
			$this.remove();
			checkWinner();
		}, 1000);

		console.log('end of click function');
	
	});

});


function checkWinner () {
	if ($('.little-square').length === 0) {
		$('h1').html('You have one!');
		clearInterval(intervalid);
	}
}