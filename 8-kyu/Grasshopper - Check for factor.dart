import 'package:test/test.dart';

//Instructions: This function should test if the factor is a factor of base.

// Return true if it is a factor or false if it is not.

// About factors
// Factors are numbers you can multiply together to get another number.

// 2 and 3 are factors of 6 because: 2 * 3 = 6

// You can find a factor by dividing numbers. If the remainder is 0 then the number is a factor.
// You can use the mod operator (%) in most languages to check for a remainder
// For example 2 is not a factor of 7 because: 7 % 2 = 1

// Note: base is a non-negative number, factor is a positive number.

//solution
bool checkForFactor(int base, int factor) =>
    (base % factor == 0) ? true : false;

//test
void main() {
  group('basic tests', () {
    test("should return true", () {
      expect(checkForFactor(10, 2), equals(true));
      expect(checkForFactor(63, 7), equals(true));
      expect(checkForFactor(2450, 5), equals(true));
      expect(checkForFactor(24612, 3), equals(true));
    });
    test("should return false", () {
      expect(checkForFactor(9, 2), equals(false));
      expect(checkForFactor(653, 7), equals(false));
      expect(checkForFactor(2453, 5), equals(false));
      expect(checkForFactor(24617, 3), equals(false));
    });
  });
}
