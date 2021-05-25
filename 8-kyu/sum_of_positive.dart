import 'package:test/test.dart';

//Instructions: You get an array of numbers, return the sum of all of the positives ones.
// Example [1,-4,7,12] => 1 + 7 + 12 = 20
// Note: if there is nothing to sum, the sum is default to 0.

//solution
int positiveSum(List<int> arr) {
  var sum = 0;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] > 0) {
      sum += arr[i];
    }
  }
  return sum;
}

//test
void main() {
  group("fixed tests", () {
    test("Testing for [1, 2, 3, 4, 5]",
        () => expect(positiveSum([1, 2, 3, 4, 5]), equals(15)));
    test("Testing for [1, -2, 3, 4, 5]",
        () => expect(positiveSum([1, -2, 3, 4, 5]), equals(13)));
    test("Testing for []", () => expect(positiveSum([]), equals(0)));
    test("Testing for [-1, -2, -3, -4, -5]",
        () => expect(positiveSum([-1, -2, -3, -4, -5]), equals(0)));
    test("Testing for [-1, 2, 3, 4, -5]",
        () => expect(positiveSum([-1, 2, 3, 4, -5]), equals(9)));
  });
}
