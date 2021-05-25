import 'package:test/test.dart';

//Instructions: Return the Nth Even Number

// Example(Input --> Output)

// 1 --> 0 (the first even number is 0)
// 3 --> 4 (the 3rd even number is 4 (0, 2, 4))
// 100 --> 198
// 1298734 --> 2597466
// The input will not be 0.

//solution
int nthEven(int n) => (n * 2 - 2);

//test
void main() {
  group('Fixed tests', () {
    test("Testing for 1", () => expect(nthEven(1), equals(0)));
    test("Testing for 2", () => expect(nthEven(2), equals(2)));
    test("Testing for 3", () => expect(nthEven(3), equals(4)));
    test("Testing for 100", () => expect(nthEven(100), equals(198)));
    test(
        "Testing for 1298734", () => expect(nthEven(1298734), equals(2597466)));
  });
}
