import 'package:test/test.dart';

//Instructions:
// Task
// Given an array/list [] of integers , Find the product of the k maximal numbers.

// Notes
// Array/list size is at least 3 .

// Array/list's numbers Will be mixture of positives , negatives and zeros

// Repetition of numbers in the array/list could occur.

// Input >> Output Examples
// maxProduct ({4, 3, 5}, 2) ==>  return (20)
// Explanation:
// Since the size (k) equal 2 , then the subsequence of size 2 whose gives product of maxima is 5 * 4 = 20 .
// maxProduct ({8, 10 , 9, 7}, 3) ==>  return (720)
// Explanation:
// Since the size (k) equal 3 , then the subsequence of size 3 whose gives product of maxima is 8 * 9 * 10 = 720 .
// maxProduct ({10, 8, 3, 2, 1, 4, 10}, 5) ==> return (9600)
// Explanation:
// Since the size (k) equal 5 , then the subsequence of size 5 whose gives product of maxima is 10 * 10 * 8 * 4 * 3 = 9600 .
// maxProduct ({-4, -27, -15, -6, -1}, 2) ==> return (4)
// Explanation:
// Since the size (k) equal 2 , then the subsequence of size 2 whose gives product of maxima is -4 * -1 = 4 .
// maxProduct ({10, 3, -1, -27} , 3)  return (-30)
// Explanation:
// Since the size (k) equal 3 , then the subsequence of size 3 whose gives product of maxima is 10 * 3 * -1 = -30 .

//solution
int maxProduct(List<int> arr, size) {
  int total = 1;
  arr.sort((a, b) => b.compareTo(a));
  for (var i = 0; i < size; i++) {
    total *= arr[i];
  }
  return total;
}

//test
void main() {
  group("Fixed tests", () {
    test("maxProduct([4, 3, 5], 2)", () {
      expect(maxProduct([4, 3, 5], 2), equals(20));
    });
    test("maxProduct([10, 8, 7, 9], 3)", () {
      expect(maxProduct([10, 8, 7, 9], 3), equals(720));
    });
    test("maxProduct([8, 6, 4, 6], 3)", () {
      expect(maxProduct([8, 6, 4, 6], 3), equals(288));
    });
    test("maxProduct([10, 2, 3, 8, 1, 10, 4], 5)", () {
      expect(maxProduct([10, 2, 3, 8, 1, 10, 4], 5), equals(9600));
    });
    test("maxProduct([13, 12, -27, -302, 25, 37, 133, 155, -14], 5)", () {
      expect(maxProduct([13, 12, -27, -302, 25, 37, 133, 155, -14], 5),
          equals(247895375));
    });
    test("maxProduct([-4, -27, -15, -6, -1], 2)", () {
      expect(maxProduct([-4, -27, -15, -6, -1], 2), equals(4));
    });
    test("maxProduct([-17, -8, -102, -309], 2)", () {
      expect(maxProduct([-17, -8, -102, -309], 2), equals(136));
    });
    test("maxProduct([10, 3, -27, -1], 3)", () {
      expect(maxProduct([10, 3, -27, -1], 3), equals(-30));
    });
    test("maxProduct([14, 29, -28, 39, -16, -48], 4)", () {
      expect(maxProduct([14, 29, -28, 39, -16, -48], 4), equals(-253344));
    });
    test("maxProduct([1], 1)", () {
      expect(maxProduct([1], 1), equals(1));
    });
  });
}
