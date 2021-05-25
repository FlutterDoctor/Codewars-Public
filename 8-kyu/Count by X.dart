import 'package:test/test.dart';

//Instructions:
// Create a function with two arguments that will return an array of the first (n) multiples of (x).

// Assume both the given number and the number of times to count will be positive numbers greater than 0.

// Return the results as an array (or list in Python, Haskell or Elixir).

// Examples:

// countBy(1,10) === [1,2,3,4,5,6,7,8,9,10]
// countBy(2,5) === [2,4,6,8,10]

//solution
List<int> countBy(int x, int n) {
  List<int> arr = [];
  int ttl = x * n;
  for (int i = x; i <= ttl; i += x) {
    arr.add(i);
  }
  return arr;
}

//test
void main() {
  group("Fixed tests", () {
    test("countBy(1, 10)", () {
      expect(countBy(1, 10), equals([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
    });
    test("countBy(2, 5)", () {
      expect(countBy(2, 5), equals([2, 4, 6, 8, 10]));
    });
    test("countBy(3, 7)", () {
      expect(countBy(3, 7), equals([3, 6, 9, 12, 15, 18, 21]));
    });
    test("countBy(50, 5)", () {
      expect(countBy(50, 5), equals([50, 100, 150, 200, 250]));
    });
    test("countBy(100, 6)", () {
      expect(countBy(100, 6), equals([100, 200, 300, 400, 500, 600]));
    });
  });
}
