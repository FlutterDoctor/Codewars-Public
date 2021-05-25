import 'package:test/test.dart';

//Instructions: Task
// Given a number , Return _The Maximum number _ could be formed from the digits of the number given .

// Notes
// Only Natural numbers passed to the function , numbers Contain digits [0:9] inclusive

// Digit Duplications could occur , So also consider it when forming the Largest

// Input >> Output Examples:
// maxNumber (213) ==> return (321)
// Explanation:
// As 321 is _The Maximum number _ could be formed from the digits of the number 213 .

//solution
int maxNumber(n) => int.parse((n.toString().split('')..sort()).reversed.join());

//test
void main() {
  group('Fixed tests', () {
    test("Testing for 213", () {
      expect(maxNumber(213), equals(321));
    });
    test("Testing for 7389", () {
      expect(maxNumber(7389), equals(9873));
    });
    test("Testing for 63792", () {
      expect(maxNumber(63792), equals(97632));
    });
    test("Testing for 566797", () {
      expect(maxNumber(566797), equals(977665));
    });
    test("Testing for 1000000", () {
      expect(maxNumber(1000000), equals(1000000));
    });
  });
}
