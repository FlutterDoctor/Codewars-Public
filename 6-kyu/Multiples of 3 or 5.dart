import 'package:test/test.dart';

//Instructions: If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

// Note: If the number is a multiple of both 3 and 5, only count it once. Also, if a number is negative, return 0(for languages that do have them)

//solution
int solution(int n) {
  var ttl = 0;

  for (var i = 0; i < n; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      ttl += i;
    }
  }
  return ttl;
}

//test
void tester(int n, int exp) =>
    test("Testing for $n", () => expect(solution(n), equals(exp)));
void main() {
  group("Basic tests", () {
    tester(10, 23);
    tester(20, 78);
    tester(200, 9168);
  });
}
