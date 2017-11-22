

//Object Literal Format
// var myObject = {};

// myObject.name = 'Keir';
// myObject.height = 5.11;

// myObject.height = 'avkb';

// 


//JSON Literal

// var myObject = {
// 	name: 'name',

// 	height: 5.11,

// 	address: {
// 		postCode: 'SW11',
// 		street: 'George Street 12'
// 	},

// 	sayHello: function () {
// 		console.log('hello');
// 	},

// 	sayGoodBye: function () {
// 		console.log('goodbye');
// 	}
// };

// console.log(myObject);
// myObject.sayHello();
// myObject.sayGoodBye();


var me = {
	name: 'keir',
	age: 22,
	number: 8952051,
	degree: 'Computer Science',
	address: {
		postcode: 'SSR 1SS',
		number: 21,
		county: 'Essex',
		town: 'Rochford'
	},

	getInfo: function () {
		return me.name + ' ' + me.age + ' ' + me.number + ' ' + me.degree;
	}
};