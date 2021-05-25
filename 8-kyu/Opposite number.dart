import 'package:test/test.dart';

//Instructions: Very simple, given a number, find its opposite.

// Examples:

// 1: -1
// 14: -14
// -34: 34

//solution
num opposite(num n) => -n;

//test
void main() {
  group("Fixed tests", () {
    test("Testing for 1", () => expect(opposite(1), equals(-1)));
    test("Testing for 0", () => expect(opposite(0), equals(0)));
    test("Testing for 4.25", () => expect(opposite(4.25), equals(-4.25)));
    test("Testing for 3.3333333",
        () => expect(opposite(3.3333333), equals(-3.3333333)));
    test("Testing for -12525220.3325",
        () => expect(opposite(-12525220.3325), equals(12525220.3325)));
    test("Testing for -5", () => expect(opposite(-5), equals(5)));
  });
}
