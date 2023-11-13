// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

describe('codedMessage', () => {
    it('takes in a string and returns a string with a coded message.', () => {
        const secretCodeWord1 = "Lackadaisical"
        // Expected output: "L4ck4d41s1c4l"
        const secretCodeWord2 = "Gobbledygook"
        // Expected output: "G0bbl3dyg00k"
        const secretCodeWord3 = "Eccentric"
        // Expected output: "3cc3ntr1c"   
        expect(codedMessage(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
        expect(codedMessage(secretCodeWord2)).toEqual("G0bbl3dyg00k")
        expect(codedMessage(secretCodeWord3)).toEqual("3cc3ntr1c")
    })
})

// ReferenceError: codedMessage is not defined

// b) Create the function that makes the test pass.

// Pseudo code:
// input: String
// output: String with coded message
function codedMessage(string) {
    // return a string replacing the given letters with the appropriate converts listed in the prompt
    return string.replace(/a|A/g,"4").replace(/e|E/g,"3").replace(/i|I/g,"1").replace(/o|O/g,"0") 
    // note: .replace(/first value = replaced value/"g" = replaces all instances of that value, the character replacing the original value)
}

//Source: https://stackoverflow.com/questions/16576983/replace-multiple-characters-in-one-replace-call

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.


describe ('fullHouse', () => {
    it('takes in an array of 5 numbers and determines whether or not the array is a "full house"', () => {
        const hand1 = [5, 5, 5, 3, 3]
        // Expected output: true
        const hand2 = [5, 5, 3, 3, 4]
        // Expected output: false
        const hand3 = [5, 5, 5, 5, 4]
        // Expected output: false
        const hand4 = [7, 2, 7, 2, 7]
        // Expected output: true    
        expect(fullHouse(hand1)).toEqual(true)
        expect(fullHouse(hand2)).toEqual(false)
        expect(fullHouse(hand3)).toEqual(false)
        expect(fullHouse(hand4)).toEqual(true)
    })
})

// ReferenceError: fullHouse is not defined

// b) Create the function that makes the test pass.

// Pseudo code:
// input: Array of numbers
// output: True or False
function fullHouse(hand) {
    const counts = {};
    hand.forEach(x => counts[x] = (counts[x] || 0) + 1);
    return Object.values(counts).includes(2) && Object.values(counts).includes(3);
}

//Process: Code above was found on chatgpt, but i was not able to understand exactly what was taking place yet. I will continue to research and study this.
