import 'package:test/test.dart';

//Instructions: Clock shows h hours, m minutes and s seconds after midnight.

// Your task is to write a function which returns the time since midnight in milliseconds.

// Example:
// h = 0
// m = 1
// s = 1

// result = 61000
// Input constraints:

// 0 <= h <= 23
// 0 <= m <= 59
// 0 <= s <= 59

//solution
int past(int h, int m, int s) => (h * 3600000 + m * 60000 + s * 1000).abs();

//test
void main() {
  group("Basic tests", () {
    test("past(0, 1, 1)", () => expect(past(0, 1, 1), equals(61000)));
    test("past(1, 1, 1)", () => expect(past(1, 1, 1), equals(3661000)));
    test("past(0, 0, 0)", () => expect(past(0, 0, 0), equals(0)));
    test("past(1, 0, 1)", () => expect(past(1, 0, 1), equals(3601000)));
    test("past(1, 0, 0)", () => expect(past(1, 0, 0), equals(3600000)));
  });
}
