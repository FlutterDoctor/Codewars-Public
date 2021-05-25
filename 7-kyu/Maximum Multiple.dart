import 'package:test/test.dart';

//Instructions: Task
// Given a Divisor and a Bound , Find the largest integer N , Such That ,

// Conditions :
// N is divisible by divisor

// N is less than or equal to bound

// N is greater than 0.

// Notes
// The parameters (divisor, bound) passed to the function are only positive values .
// It's guaranteed that a divisor is Found .
// Input >> Output Examples
// maxMultiple (2,7) ==> return (6)
// Explanation:
// (6) is divisible by (2) , (6) is less than or equal to bound (7) , and (6) is > 0 .

// maxMultiple (10,50)  ==> return (50)
// Explanation:
// (50) is divisible by (10) , (50) is less than or equal to bound (50) , and (50) is > 0 .*

// maxMultiple (37,200) ==> return (185)
// Explanation:
// (185) is divisible by (37) , (185) is less than or equal to bound (200) , and (185) is > 0 .

//solution
int maxMultiple(divisor, bound) {
  int n = divisor;
  while (n + divisor <= bound) n += divisor;
  return (divisor > bound) ? 0 : n;
}

//test
void main() {
  group("Fixed tests", () {
    test("maxMultiple(2, 7)", () => expect(maxMultiple(2, 7), equals(6)));
    test("maxMultiple(3, 10)", () => expect(maxMultiple(3, 10), equals(9)));
    test("maxMultiple(7, 17)", () => expect(maxMultiple(7, 17), equals(14)));
    test("maxMultiple(10, 50)", () => expect(maxMultiple(10, 50), equals(50)));
    test("maxMultiple(37, 200)",
        () => expect(maxMultiple(37, 200), equals(185)));
    test("maxMultiple(7, 100)", () => expect(maxMultiple(7, 100), equals(98)));
  });
}
