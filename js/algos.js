
//=======pseudocode for relaeae 1- longest string in array======================
//	Create an array with three sets of strings of three different char. lengths.
//	Create a base value index (0) and a variable that will eventually be our longest string.
//	Loop over each index in the array returning each strings length
//	Method to check legnth of string, determine if it's greater than the current varible, if it is greater replace, if not move on
//	Post loop, return holding variable. 
//==============================================================================

var array = ["long", "longer", "longestest", "longest"];

 index = 0; 
 strLength = array[0].length;
 
 for(var i=0; i < array.length; i++) {
    if (array[i].length > strLength) {
        index = i; strLength = array[i].length;
    }
}
//return array[i];
console.log(strLength)

//===========================================================================
//	function that accepts objects as arguments 
//	use "or" operator to compare the name and age of each object 
//  **had to use dot function to call name and age for it to work**
//	use return method to return true or false
//

person1 = {name: "Steven", age: 54}
person2 = {name: "Jane", age: 54}

function compareLong(a, b) {
	return (a.name === b.name || a.age === b.age);
}

compareLong(person1, person2);

//	solution I found while looking for a solution to something must less specefic, I assume this is what
// 	would be considered a "slick search function"

//	function compare(a, b) {
// 	return JSON.stringify(a, b) === JSON.stringify(a, b);
//}
//compare(person1, person2);

//============================================================================

