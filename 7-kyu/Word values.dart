import 'package:test/test.dart';

//Instructions: Given a string "abc" and assuming that each letter in the string has a value equal to its position in the alphabet, our string will have a value of 1 + 2 + 3 = 6. This means that: a = 1, b = 2, c = 3 ....z = 26.

// You will be given a list of strings and your task will be to return the values of the strings as explained above multiplied by the position of that string in the list. For our purpose, position begins with 1.

// nameValue ["abc","abc abc"] should return [6,24] because of [ 6 * 1, 12 * 2 ]. Note how spaces are ignored.

// "abc" has a value of 6, while "abc abc" has a value of 12. Now, the value at position 1 is multiplied by 1 while the value at position 2 is multiplied by 2.

// Input will only contain lowercase characters and spaces.

//solution
List<int> wordValue(List<String> arr) {
  List<int> result = [];
  for (int i = 0; i < arr.length; i++) {
    int count = 0;
    arr[i].runes.forEach((int num) {
      count += num == 32 ? 0 : num - 96;
    });
    result.add(count * (i + 1));
  }
  return result;
}

//test
void main() {
  group("Fixed tests", () {
    test(
        'Testing for ["codewars", "abc", "xyz"]',
        () => expect(
            wordValue(["codewars", "abc", "xyz"]), equals([88, 12, 225])));
    test(
        'Testing for ["abc abc", "abc abc", "abc", "abc"]',
        () => expect(wordValue(["abc abc", "abc abc", "abc", "abc"]),
            equals([12, 24, 18, 24])));
    test(
        'Testing for ["abc", "abc", "abc", "abc"]',
        () => expect(
            wordValue(["abc", "abc", "abc", "abc"]), equals([6, 12, 18, 24])));
    test(
        'Testing for ["abcdefghijklmnopqrstuvwxyz", "stamford bridge", "haskellers"]',
        () => expect(
            wordValue([
              "abcdefghijklmnopqrstuvwxyz",
              "stamford bridge",
              "haskellers"
            ]),
            equals([351, 282, 330])));
    test(
        'Testing for ["i love coding", "better than pizza", "i got this"]',
        () => expect(
            wordValue(["i love coding", "better than pizza", "i got this"]),
            equals([115, 382, 321])));
    test(
        'Testing for ["mercury", "venus", "earth mars", "jupiter saturn", "uranus neptune"]',
        () => expect(
            wordValue([
              "mercury",
              "venus",
              "earth mars",
              "jupiter saturn",
              "uranus neptune"
            ]),
            equals([103, 162, 309, 768, 945])));
    test(
        'Testing for ["a cup", "some tea", "more coffee", "one glass"]',
        () => expect(
            wordValue(["a cup", "some tea", "more coffee", "one glass"]),
            equals([41, 156, 273, 368])));
    test(
        'Testing for ["a", "e", "i", "o", "u", "the end"]',
        () => expect(wordValue(["a", "e", "i", "o", "u", "the end"]),
            equals([1, 10, 27, 60, 105, 336])));
    test(
        'Testing for ["coding", "better pizza", "i got this too"]',
        () => expect(wordValue(["coding", "better pizza", "i got this too"]),
            equals([52, 296, 471])));
  });
}
