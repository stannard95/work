// get element by id

var myList = document.getElementById('list');

//get elements by class name

var myElements = document.getElementsByClassName('selected');

//get elements by tag name

var myTags = document.getElementsByTagName('li');


//edit the inner html of an element
header.innerHTML = 'my stie thing';

//edit element style
header.style.fontSize = '30px';
header.style.color = 'blue';


var lis = document.getElementsByTagName('li');

for (var i = 0; i < lis.length; i++) {
	lis[i].style.color = 'blue';
}

//Creating a new element
var list = document.getElementById('list');

var newElement = document.createElement('li');
newElement.innerHTML = 'yeah boiii';

list.appendChild(newElement);
console.log(newElement);


var wrap = document.getElementById('wrapper');
var newP = document.createElement('p');
newP.innerHTML = 'This is a p';

wrap.appendChild(newP);


//create a function that appends 1 new LI to the List element
	//Your function must take 1 arugment which will be the text that sits inside 
	// the new li

function addListItem(text) {
	var newItem = document.createElement('li');
	newItem.innerHTML = text;
	list.appendChild(newItem);
}

addListItem('JESUS');


//create an array of peoples names
	//for each name, append a new list item

var people = ['keir', 'seb', 'jemina', 'klein', 'brian'];
for(var i = 0; i < people.length; i++) {
	addListItem(people[i]);
}



