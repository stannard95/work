
function addTwo(n1 , n2) {
  return n1 + n2;
}

function addThree(n1, n2, n3) {
	return n1  + n2  + n3;
}


function multiplyTwo(n1,n2) {
	return n1 * n2;
}


function increaseByPercentage(total, percentage) {
	var percent = percentage / 100;
	var newPercent = total * percent;
	total += newPercent;
	return total;
}


function reverseWord(word) {
	var a = word.split('').reverse().join('');
	return a;
	
}

function celciusToFahrenheit(celcius) {
	var value = celcius * 1.8 + 32;
	return value;
}

function fahrenheitToCelcius(fahr) {
	var value = (fahr - 32) / 1.8;
	return value;
}


// BONUS QUESTION
function stripVowels(word) {
	return word.replace(/[aeiou]/gi, '');
}

// do not delete
runTests();