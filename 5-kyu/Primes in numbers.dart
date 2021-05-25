import 'package:test/test.dart';

//Instructions: Given a positive number n > 1 find the prime factor decomposition of n. The result will be a string with the following form :

//  "(p1**n1)(p2**n2)...(pk**nk)"
// where a ** b means a to the power of b

// with the p(i) in increasing order and n(i) empty if n(i) is 1.

// Example: n = 86240 should return "(2**5)(5)(7**2)(11)"

//solution
String primeFactors(int n) {
  var result = '';
  for (var i = 2; i <= n; i++) {
    var count = 0;
    while (n % i == 0) {
      count++;
      n ~/= i;
    }
    result += (count != 0)
        ? '(' +
            (count > 1
                ? i.toString() + '**' + count.toString()
                : i.toString()) +
            ')'
        : '';
  }
  return result;
}

//test
void main() {
  dotest(int n, String exp) {
    test("Testing for: \n$n \n", () => expect(primeFactors(n), equals(exp)));
  }

  group("fixed tests", () {
    dotest(7775460, "(2**2)(3**3)(5)(7)(11**2)(17)");
    dotest(7919, "(7919)");
    dotest(17 * 17 * 93 * 677, "(3)(17**2)(31)(677)");
    dotest(933555431, "(7537)(123863)");
    dotest(342217392, "(2**4)(3)(11)(43)(15073)");
  });
}
