import 'package:test/test.dart';

//Instructions: We need a function that can transform a number into a string.

// What ways of achieving this do you know?

// Examples:
// 123 --> "123"
// 999 --> "999"

//solution
String numberToString(int n) => n.toString();

//test
void main() {
  group("Fixed tests", () {
    test("Testing for 67", () => expect(numberToString(67), equals('67')));
    test("Testing for 79585",
        () => expect(numberToString(79585), equals('79585')));
    test("Testing for 3", () => expect(numberToString(3), equals('3')));
    test("Testing for -1", () => expect(numberToString(-1), equals('-1')));
  });
}
