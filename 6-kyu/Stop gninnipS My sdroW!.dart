import 'package:test/test.dart';

//Instructions: Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (like the name of this kata).

// Strings passed in will consist of only letters and spaces.
// Spaces will be included only when more than one word is present.
// Examples:

// spinWords("Hey fellow warriors") => "Hey wollef sroirraw"
// spinWords("This is a test") => "This is a test"
// spinWords("This is another test") => "This is rehtona test"

//solution
String spinWords(String str) {
  return str
      .split(' ')
      .map((e) => e.length > 4 ? e.split('').reversed.join() : e)
      .join(' ');
}

//test
void main() {
  group("Fixed tests", () {
    test("Testing for Welcome", () {
      expect(spinWords("Welcome"), equals("emocleW"));
    });
    test("Testing for Hey fellow warriors", () {
      expect(spinWords("Hey fellow warriors"), equals("Hey wollef sroirraw"));
    });
    test("Testing for This is a test", () {
      expect(spinWords("This is a test"), equals("This is a test"));
    });
    test("Testing for This is another test", () {
      expect(spinWords("This is another test"), equals("This is rehtona test"));
    });
    test("Testing for You are almost to the last test", () {
      expect(spinWords("You are almost to the last test"),
          equals("You are tsomla to the last test"));
    });
    test("Testing for Just kidding there is still one more", () {
      expect(spinWords("Just kidding there is still one more"),
          equals("Just gniddik ereht is llits one more"));
    });
    test("Testing for Seriously this is the last one", () {
      expect(spinWords("Seriously this is the last one"),
          equals("ylsuoireS this is the last one"));
    });
  });
}
