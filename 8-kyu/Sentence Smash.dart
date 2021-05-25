import 'package:test/test.dart';

//Instructions: Sentence Smash
// Write a function that takes an array of words and smashes them together into a sentence and returns the sentence. You can ignore any need to sanitize words or add punctuation, but you should add spaces between each word. Be careful, there shouldn't be a space at the beginning or the end of the sentence!

// Example
// ['hello', 'world', 'this', 'is', 'great']  =>  'hello world this is great'

//solution
String smash(words) => words.join(" ");

//test
void main() {
  group("Fixed tests", () {
    test('Testing for []', () {
      expect(smash([]), equals(""));
    });
    test('Testing for ["hello"]', () {
      expect(smash(["hello"]), equals("hello"));
    });
    test('Testing for ["hello", "world"]', () {
      expect(smash(["hello", "world"]), equals("hello world"));
    });
    test('Testing for ["hello", "amazing", "world"]', () {
      expect(
          smash(["hello", "amazing", "world"]), equals("hello amazing world"));
    });
    test('Testing for ["this", "is", "a", "really", "long", "sentence"]', () {
      expect(smash(["this", "is", "a", "really", "long", "sentence"]),
          equals("this is a really long sentence"));
    });
  });
}
