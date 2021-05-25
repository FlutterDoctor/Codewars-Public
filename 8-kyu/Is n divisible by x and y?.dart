import 'package:test/test.dart';

//Instructions: Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero digits.

// Examples:
// 1) n =   3, x = 1, y = 3 =>  true because   3 is divisible by 1 and 3
// 2) n =  12, x = 2, y = 6 =>  true because  12 is divisible by 2 and 6
// 3) n = 100, x = 5, y = 3 => false because 100 is not divisible by 3
// 4) n =  12, x = 7, y = 5 => false because  12 is neither divisible by 7 nor 5

//solution
bool isDivisible(int n, int x, int y) =>
    (n % x == 0 && n % y == 0) ? true : false;

//test
void tester(int n, int x, int y, bool exp) => test(
    "isDivisible($n, $x, $y)", () => expect(isDivisible(n, x, y), equals(exp)));
void main() {
  group("Basic tests", () {
    tester(3, 3, 4, false);
    tester(12, 3, 4, true);
    tester(8, 3, 4, false);
    tester(48, 3, 4, true);
    tester(100, 5, 10, true);
    tester(100, 5, 3, false);
    tester(4, 4, 2, true);
    tester(5, 2, 3, false);
    tester(17, 17, 17, true);
    tester(17, 1, 17, true);
  });
}
