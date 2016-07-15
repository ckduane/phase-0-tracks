//take a string
//create a variable to hold the reversed string
//loop through each letter backwards
//prints the letter in reverse order

function reverse(string) {
	var ReversedString = "";
	for (var i = string.length - 1; i >=0; i--) {
		ReversedString += string[i]
	}
	return ReversedString;
}

reverse("hello");