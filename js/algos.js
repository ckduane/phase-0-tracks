//write a function that takes an array of words or phrases
//return the longest word or phrase in the array

//go through each phrase
//check the length of all of them
//return the greatest

function returnLongest(array){
	var longestPhrase = "";
	var longestPhraseLength = 0;
	for (var i = 0; i < array.length; i ++){
		if (array[i].length > longestPhraseLength){
			longestPhraseLength = array[i].length;
			longestPhrase = array[i]
		}
		
	}
	return longestPhrase
}

console.log(returnLongest(["long phrase","longest phrase","longer phrase"]))
//"longest phrase"
console.log(returnLongest(["hello", "how are you?", "good, and you?"]))