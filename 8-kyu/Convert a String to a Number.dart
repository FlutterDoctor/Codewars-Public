import 'package:test/test.dart';

//Instructions: Description
// We need a function that can transform a string into a number. What ways of achieving this do you know?

// Note: Don't worry, all inputs will be strings, and every string is a perfectly valid representation of an integral number.

// Examples
// "1234" --> 1234
// "605"  --> 605
// "1405" --> 1405
// "-7" --> -7

//solution
int stringToNumber(String str) => int.parse(str);

//test
void main() {
  group('Fixed tests', () {
    test('Testing for 1234', () {
      expect(stringToNumber("1234"), equals(1234));
    });
    test('Testing for 605', () {
      expect(stringToNumber("605"), equals(605));
    });
    test('Testing for 1405', () {
      expect(stringToNumber("1405"), equals(1405));
    });
    test('Testing for -7', () {
      expect(stringToNumber("-7"), equals(-7));
    });
  });
}
