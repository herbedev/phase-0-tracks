// Pseudocode for reversing a word
// Take input from the user
// For each letter in the word move its position one space forward
// loop through the length of the string and decreases the increment by 1 

function reverse(string) {
	var ReversedString = "";

	if (1 == 1) {
		for (var i = string.length - 1; i >= 0; i--) {
			ReversedString += string[i];
		}
		return ReversedString;
	}
}

new_word = reverse('hello');
console.log(new_word);