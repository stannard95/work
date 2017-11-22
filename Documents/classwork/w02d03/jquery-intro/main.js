// //dom traversal


// //OLD
// 	// document.getElementById('main-heading');

// //NEW
// var $mainHeading = $('#main-heading');
// console.log($mainHeading);

// var $greenElements = $('.green');

// var $p = $('p');
// console.log($p);


// var $lis = $('.likes li').eq(2);
// console.log($lis);


// var $lastPTag = $('p:last');
// console.log($lastPTag);

// // get the closet parent given a critera

// var $parentArticle = $lastPTag.closest('.article-container');
// console.log($parentArticle);

// var $findPTags = $parentArticle.find('p');

// console.log($findPTags);

// // creating elements
// $('main').append('<p>hello I am a thing bob 2000 </p>');
// $('main').prepend('<p>hello I am a thing bob 20001 </p>');

// $('li').append('<a href="#"> CLICK ME </a>');

// //remove elements

// $('h2').remove();



// Jquery Dom Manipulations

	// //Inner HTML
	// var $mainHeading = $('#main-heading');
	// $mainHeading.html('YEAH');


	// //.Style
	// var $header = $('h1');
	// $header.css('font-size', '100px');

	// $header.css ({
	// 	'font-size': '100px',
	// 	'color': 'yellow'
	// });

	// $('p').addClass('green');

	// $('p').removeClass('green');

	// $('p').hasclass('green');

 //Jquery revents

// $('h1').on('click', function (event) {
// 	console.log('yeah');
// });


//ONE WAY

	// $('p').on('click', function (event) {
	// 	$(this).toggleClass('green');

	// 	if($(this).css('background-color') === 'rgb(255, 192, 203)') {
	// 		$(this).css('background-color', 'white');
	// 	}
	// 	else {
	// 		$(this).css('background-color', 'pink');
	// 	}
	// });


//ANOTHER WAY 

// $('p').hover(function (event) {
// 	console.log('iuava');
// });


// $('h1').one('click', function (event) {
// 	console.log('yeah');
// });
























































































