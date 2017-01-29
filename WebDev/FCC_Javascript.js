// Example

var ourName;

// Define myName below this line
var myName;


// Setup
var a;
var b = 2;

// Only change code below this line

var a = 7;
var b = a;

// Example
var ourVar = 19;

// Only change code below this line
var a = 9;

// Initialize these three variables
var a = 5;
var b = 10;
var c = "I am a";

// Do not change code below this line

a = a + 1;
b = b + 5;
c = c + " String!";

// Declarations
var studlyCapVar;
var properCamelCase;
var titleCaseOver;

// Assignments Understanding Case Sensitivity in Variables
studlyCapVar = 10;
properCamelCase = "A String";
titleCaseOver = 9000;

// Addition of two variables 
var myVar = 10;

var sum = 10 + myVar;

// Substracting the two numbers to generate the output of 12
var difference = 45 - 33;

// Multiplying the two numbers so the output is 80
var product = 8 * 10;

// Divide the two numbers so the quotient is 2
var quotient = 66 / 33;

/*
The entire line becomes i++;, eliminating the need for the equal sign.

Instructions
Changed the code to use the ++ operator on myVar.

*/

var myVar = 87;

// Only change code below this line insted to +1 use the ++ operation
Var = myVar ++;

/*
You can easily decrement or decrease a variable by one with the -- operator.

i--;

is the equivalent of

i = i - 1;
*/

var myVar = 11;

// Only change code below this line
Var = myVar --;

// Can Store decimal numbers in variables

var ourDecimal = 5.7;

// Only change code below this line
var myDecimal = 8.5;

// Can perform calculations with decimal numbers, just as whole numbers
var product = 2.5 * 2.0;

// Divide one decimal by another

var quotient = 4.4 / 2.0;

/*The remainder operator % gives the remainder of the division of two numbers.
Example

5 % 2 = 1 because
Math.floor(5 / 2) = 2 (Quotient)
2 * 2 = 4
5 - 4 = 1 (Remainder)

*/
// Only change code below this line

var remainder;
remainder = 10 % 4;

/* Operators which do both modification and evaluation (a mathematical operation and assignment) in one step. */

var a = 3;
var b = 17;
var c = 12;

// Only modify code below this line

a += 12;
b += 9 ;
c += 7;

/* Like the += operator, -= subtracts a number from a variable. */
var a = 11;
var b = 9;
var c = 3;

// Only modify code below this line
a -=  6;
b -= 15;
c -= 1;

/* The *= operator multiplies a variable by a number. */
var a = 5;
var b = 12;
var c = 4.6;

// Only modify code below this line

a *= 5;
b *= 3;
c *= 10;

/* The /= operator divides a variable by another number. */
var a = 48;
var b = 108;
var c = 33;

// Only modify code below this line

a /= 12;
b /= 4;
c /= 11;

// Converting the value from celsius to fahrenheit using a temp variable to assing the new value to the same variable for calculations

function convertToF(celsius) {
  var fahrenheit;
  // Only change code below this line
    var cTemp = celsius;
    fahrenheit = cTemp * (9/5) + 32;
  
  // Only change code above this line
  return fahrenheit;
}

// Change the inputs below to test your code
convertToF(0);
convertToF(-30);
convertToF(-10);
convertToF(0);
convertToF(30);
convertToF(20);

// declaring a string which means a 'string literal' because it is a series of zero or more characters enclosed in single or double quotes.

// Example
var firstName = "Alan";
var lastName = "Turing";

// Only change code below this line
var myFirstName = "robert";
var myLastName = "renn";

// Use backslashes to assign a string to the myStr variable to print it to the console.  
var myStr = "I am a \"double quoted\" string inside \"double quotes\".";

// Changed the provided string from double to single quotes and remove the escaping. And backslashes removed.
var myStr = '<a href="http://www.example.com" target="_blank">Link</a>';

// Assigning the following three lines of text into the single variable myStr using escape sequences.
var myStr="FirstLine\n\\SecondLine\\\rThirdLine";

// In JavaScript, when the + operator is used with a String value, it is called the concatenation operator. 
// You can build a new string out of other strings by concatenating them together.
// Example
var ourStr = "I come first. " + "I come second.";

// Only change code below this line
var myStr ="This is the start. " + "This is the end.";

// using the += operator to concatenate a string onto the end of an existing string variable. 
// This can be very helpful to break a long string over several lines.
// Example
var ourStr = "I come first. ";
ourStr += "I come second.";

// Only change code below this line
var myStr = "This is the first sentence. ";
myStr += "This is the second sentence.";

// By using the concatenation operator (+), you can insert one or more variables into a string you're building.
// Example
var ourName = "Free Code Camp";
var ourStr = "Hello, our name is " + ourName + ", how are you?";

// Only change code below this line
var myName = "Robert Renn";
var myStr = "My name is " + myName + " and I am swell!";

// Set someAdjective and append it to myStr using the += operator.
// Example
var anAdjective = "awesome!";
var ourStr = "Free Code Camp is ";
ourStr += anAdjective;

// Only change code below this line

var someAdjective = "awesome way to advance one's career";
var myStr = "Learning to code is ";
myStr += someAdjective;

// Can find the length of a String value by writing ".length" after the string variable or string literal.
// Used the ".length" property to count the number of characters in the lastName variable and assign it to lastNameLength.
// Example
var firstNameLength = 0;
var firstName = "Ada";

firstNameLength = firstName.length;

// Setup
var lastNameLength = 0;
var lastName = "Lovelace";

// Only change code below this line.

lastNameLength = lastName.length;
