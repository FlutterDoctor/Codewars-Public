import 'package:test/test.dart';

//Instructions: Complete the function which converts a binary number (given as a string) to a decimal number.

//solution
int binToDec(bin) => int.parse(bin, radix: 2);

//test
void main() {
  group("Fixed tests", () {
    test("Testing for '1'", () {
      expect(binToDec("1"), equals(1));
    });
    test("Testing for '0'", () {
      expect(binToDec("0"), equals(0));
    });
    test("Testing for '1001001'", () {
      expect(binToDec("1001001"), equals(73));
    });
  });
}
