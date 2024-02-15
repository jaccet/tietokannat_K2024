const prompt = require('prompt-sync')();

function printLarger (n1,n2) {
    if (n1 > n2 ) return n1;
    if (n2 > n1 ) return n2;
}

let s1 = prompt("Enter your first number:");
let num1 = parseFloat(s1);

let s2 = prompt("Enter your second number:");
let num2 = parseFloat(s2);

console.log("The larger number is ",printLarger(num1,num2));