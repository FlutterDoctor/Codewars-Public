import 'package:test/test.dart';

//Instructions: Your task is to add up letters to one letter.

// The function will be given a list of letters, each one being a letter to add.

// Notes:
// Letters will always be lowercase.
// Letters can overflow (see second to last example of the description)
// If no letters are given, the function should return 'z'
// Examples:
// addLetters(['a', 'b', 'c']) = 'f'
// addLetters(['a', 'b']) = 'c'
// addLetters(['z']) = 'z'
// addLetters(['z', 'a']) = 'a'
// addLetters(['y', 'c', 'b']) = 'd' // notice the letters overflowing
// addLetters(<String>[]) = 'z'

//solution
String alphabet = 'abcdefghijklmnopqrstuvwxyz';

String addLetters(List<String> letters) => alphabet[
    letters.fold<int>(25, (acc, x) => acc + (alphabet.indexOf(x) + 1)) % 26];

//test
void main() {
  group("Fixed tests", () {
    List tests = [
      [
        ['a', 'b', 'c'],
        'f'
      ],
      [
        ['z'],
        'z'
      ],
      [
        ['a', 'b'],
        'c'
      ],
      [
        ['c'],
        'c'
      ],
      [
        ['z', 'a'],
        'a'
      ],
      [
        ['y', 'c', 'b'],
        'd'
      ],
      [<String>[], 'z']
    ];
    tests.forEach((t) {
      test("Testing for [${t[0].map((x) => "\"$x\"").join(', ')}]",
          () => expect(addLetters(t[0]), equals(t[1])));
    });
  });
}
