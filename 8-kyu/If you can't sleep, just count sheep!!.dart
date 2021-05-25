import 'package:test/test.dart';

//Instructions: If you can't sleep, just count sheep!!

// Task:
// Given a non-negative integer, 3 for example, return a string with a murmur: "1 sheep...2 sheep...3 sheep...". Input will always be valid, i.e. no negative integers.

//solution
String countSheep(numb) {
  var text = '';
  for (var i = 1; i <= numb; i++) {
    text += '$i sheep...';
  }
  return text;
}

//test
void main() {
  group("Fixed tests", () {
    test("Testing for 1", () => expect(countSheep(1), equals("1 sheep...")));
    test("Testing for 2",
        () => expect(countSheep(2), equals("1 sheep...2 sheep...")));
    test("Testing for 3",
        () => expect(countSheep(3), equals("1 sheep...2 sheep...3 sheep...")));
  });
}
