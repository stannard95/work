var length = parseFloat(prompt('What length?'));

var  i = 0;

while(i < length) {

	i++;

	if(i % 3 === 0 && i % 5 === 0) {
		console.log('fizzbuzz');
	
	} else if (i % 3 === 0) {
		console.log('fizz');
	
	}	else if(i % 5=== 0) {
		console.log('buzz');
	}

	else {
		console.log(i);
	}
}