const prompt = require('prompt-sync')();

const userString = prompt("Give a word and I'll tell you if it's a palindrome:");

function detectPalindrome(stringInput) {
    stringInput = userString.split('');

    const inverseLetters = stringInput.reverse();

    const inverseString = inverseLetters.join('');
    
    if (inverseString === userString) {
        console.log("Palindrome detected!");
    } else {
        console.log("No palindrome :(");
    }
}
detectPalindrome(userString);