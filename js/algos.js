
//=======pseudocode for relaeae 0- longest string in array======================
//	Create an array with three sets of strings of three different char. lengths.
//	Create a base value index (0) and a variable that will eventually be our longest string.
//	Loop over each index in the array returning each strings length
//	Method to check legnth of string, determine if it's greater than the current varible, if it is greater replace, if not move on
//	Post loop, return holding variable. 


//==========================================================
// 1st attempt -  Problems:
// It's returning the length of the longest string, not the actually string

var array = ["long", "longer", "longestest", "longest"];

 index = 0; 
 strLength = array[0].length;
 
 for(var i=0; i < array.length; i++) {
    if (array[i].length > strLength) {
        index = i; strLength = array[i].length;
    }
}
console.log(strLength)
//==========================================================


//==========================================================
// returns longest string in array
function longestStr(ary) {
    var longStr = ary[0]
    for (var i = 0; i < ary.length; i++) {
        if (ary[i].length > longStr.length) {
            longStr = ary[i];
        }
    }
    return(longStr)
}
//=======Driver code=====

console.log(longestStr(["long", "longer", "longest", "longestest"]))
console.log(longestStr(["long string", "longer", "longest string", "longestest"]))

//==========================================================



//============pseudocode for relaeae 1- key value match===============================
//	Function that accepts objects as arguments 
//	Use "or" operator to compare the name and age of each object 
//  **had to use dot function to call name and age for it to work**
//	Use return method to return true or false
//

person1 = {name: "Steven", age: 54}
person2 = {name: "Jane", age: 54}
person3 = {name: "Steven", age: 100}
person4 = {name: "Ivan", age: 35} 

function compareLong(a, b) {
	return (a.name === b.name || a.age === b.age);
}
// Driver code
compareLong(person1, person2); 	//=> true
compareLong(person1, person3);	//=> true
compareLong(person2, person4);	//=> false8

//==========================================================

//	The following is a solution I found while looking for a solution to something must less specefic, I assume this is what
// 	would be considered a "slick search function"

//	function compare(a, b) {
// 	return JSON.stringify(a, b) === JSON.stringify(a, b);
//}
// driver code
//compare(person1, person2);

//==========================================================


//=============pseudocode for relaeae 2-Random test data================================
//	create an empty array 
//	take the user input (number of words)
//	set number to index
//	random word generator using .random of varying type and length
//	per the index, create random words and shovel them into the array ** random word function will need use the 	
//	random number generator
//	create 10 arrays
//	prints array
//	call longest word method (not currently working)
//==========================================================

// 	RANDOM WORD GENERATOR
//	a is set equal to a random number 
a = Math.floor(Math.random() * 20);

function wordGenerator(a) {
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

    for( var i=0; i < a; i++ )
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    return text;
}
//  driver code
wordGenerator(a)


// 	ARRAY GENERATOR
// funciton to use the wordGenerator to create a number (b) of workd and shovel them into an array
function arrayMaker(b) {
	var array = [];
//	creating (b) number of words and pushing them into the array
	array.push(wordGenerator(a)*b) 
}
// driver code
arrayMaker(3)

// Problems:
// array maker not working 


// working on creating multiple words for array.
function wordGenerator(a,x) {
    var array = [];
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    
    while(x !== 0); {
    for( var i=0; i < a; i++ )
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    array.push(text);
    x -= 1;
    }return array;

}
console.log()
wordGenerator(a,2)


