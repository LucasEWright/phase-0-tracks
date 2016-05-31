
//=======pseudocode for relaeae 1- longest string in array======================
//	Create an array with three sets of strings of three different char. lengths.
//	Create a base value index (0) and a variable that will eventually be our longest string.
//	Loop over each index in the array returning each strings length
//	Method to check legnth of string, determine if it's greater than the current varible, if it is greater replace, if not move on
//	Post loop, return holding variable. 
//==============================================================================

var array = ["long", "longer", "longest"];

 index = 0; 
 strLength = array[0].length;
 for(var i=1; i< array.length; i++) {
    if(array[i].length > strLength) {
        index = i; strLength = array[i].length;
    }
}
//return array[i];
//console.log(strLength);