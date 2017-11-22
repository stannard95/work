// Increment

// var count = 9;
// count ++;
// console.log(count);


//decrement

// var count = 78;
// count --;
// console.log(count);


//for loop

// for (var i = 0; i < 20; i++) {
// 	console.log(i);
// 	console.log('hello keir');
// }

// var people = ['james', 'nial', 'tim', 'dave', 'roger', 'steve'];

// for (var i = 0; i < people.length; i++) {
// 	people[i] = people[i] + ' is awesome';
// }

// console.log(people);

// var animals = ['tiger', 'dog', 'cat', 'bear', 'mouse'];

// for (var i = 0; i < animals.length; i++) {
// 	animals[i] = animals[i] + ' is an animal';
// }

// console.log(animals);


//while loop

var program = true;

while (program) {
	//some code
	console.log('program is running');
	var response = prompt('would you like y/n');

	if(response === 'y') {
		program = false;
	}

	else {
		program = true;
	}
}



