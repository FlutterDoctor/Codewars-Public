import 'package:test/test.dart';

//Instructions: Task
// Given an array/list [] of integers , Find the Nth smallest element in this array of integers

// Notes
// Array/list size is at least 3 .

// Array/list's numbers could be a mixture of positives , negatives and zeros .

// Repetition in array/list's numbers could occur , so don't Remove Duplications .

// Input >> Output Examples
// nthSmallest({3,1,2} ,2) ==> return (2)
// Explanation:
// Since the passed number is 2 , Then * the second smallest element in this array/list is 2*

// nthSmallest({15,20,7,10,4,3} ,3) ==> return (7)
// Explanation:
// Since the passed number is 3 , Then * the third smallest element in this array/list is 7*

// nthSmallest({2,169,13,-5,0,-1} ,4) ==> return (2)
// Explanation:
// Since the passed number is 4 , Then * the fourth smallest element in this array/list is 2*

// nthSmallest({177,225,243,-169,-12,-5,2,92} ,5) ==> return (92)
// Explanation:
// Since the passed number is 5 , Then * the fifth smallest element in this array/list is 92*

//solution

int nthSmallest(arr, pos) {
  arr.sort();
  return arr[--pos];
}

//test
void main() {
  group('Fixed tests', () {
    test("nthSmallest([3, 1, 2], 2)", () {
      expect(nthSmallest([3, 1, 2], 2), equals(2));
    });
    test("nthSmallest([15, 20, 7, 10, 4, 3], 3)", () {
      expect(nthSmallest([15, 20, 7, 10, 4, 3], 3), equals(7));
    });
    test("nthSmallest([-5, -1, -6, -18], 4)", () {
      expect(nthSmallest([-5, -1, -6, -18], 4), equals(-1));
    });
    test("nthSmallest([-102, -16, -1, -2, -367, -9], 5)", () {
      expect(nthSmallest([-102, -16, -1, -2, -367, -9], 5), equals(-2));
    });
    test("nthSmallest([2, 169, 13, -5, 0, -1], 4)", () {
      expect(nthSmallest([2, 169, 13, -5, 0, -1], 4), equals(2));
    });
  });
}
