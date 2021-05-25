import 'package:test/test.dart';

//Instructions: Task
// Given an array/list [] of n integers , find maximum triplet sum in the array Without duplications .

// Notes :
// Array/list size is at least 3 .

// Array/list numbers could be a mixture of positives , negatives and zeros .

// Repetition of numbers in the array/list could occur , So (duplications are not included when summing).

// Input >> Output Examples
// 1- maxTriSum ({3,2,6,8,2,3}) ==> return (17)
// Explanation:
// As the triplet that maximize the sum {6,8,3} in order , their sum is (17)

// Note : duplications are not included when summing , (i.e) the numbers added only once .

// 2- maxTriSum ({2,1,8,0,6,4,8,6,2,4}) ==> return (18)
// Explanation:
// As the triplet that maximize the sum {8, 6, 4} in order , their sum is (18) ,
// Note : duplications are not included when summing , (i.e) the numbers added only once .
// 3- maxTriSum ({-7,12,-7,29,-5,0,-7,0,0,29}) ==> return (41)
// Explanation:
// As the triplet that maximize the sum {12 , 29 , 0} in order , their sum is (41) ,
// Note : duplications are not included when summing , (i.e) the numbers added only once .

//solution
int maxTriSum(List<int> nums) {
  return (nums.toSet().toList()..sort())
      .reversed
      .take(3)
      .reduce((a, b) => a + b);
}

//test
void main() {
  group('Fixed tests', () {
    test("Testing for [3, 2, 6, 8, 2, 3]", () {
      expect(maxTriSum([3, 2, 6, 8, 2, 3]), equals(17));
    });
    test("Testing for [2, 9, 13, 10, 5, 2, 9, 5]", () {
      expect(maxTriSum([2, 9, 13, 10, 5, 2, 9, 5]), equals(32));
    });
    test("Testing for [2, 1, 8, 0, 6, 4, 8, 6, 2, 4]", () {
      expect(maxTriSum([2, 1, 8, 0, 6, 4, 8, 6, 2, 4]), equals(18));
    });
    test("Testing for [-3, -27, -4, -2, -27, -2]", () {
      expect(maxTriSum([-3, -27, -4, -2, -27, -2]), equals(-9));
    });
    test("Testing for [-14, -12, -7, -42, -809, -14, -12]", () {
      expect(maxTriSum([-14, -12, -7, -42, -809, -14, -12]), equals(-33));
    });
    test("Testing for [-13, -50, 57, 13, 67, -13, 57, 108, 67]", () {
      expect(maxTriSum([-13, -50, 57, 13, 67, -13, 57, 108, 67]), equals(232));
    });
    test("Testing for [-7, 12, -7, 29, -5, 0, -7, 0, 0, 29]", () {
      expect(maxTriSum([-7, 12, -7, 29, -5, 0, -7, 0, 0, 29]), equals(41));
    });
    test("Testing for [-2, 0, 2]", () {
      expect(maxTriSum([-2, 0, 2]), equals(0));
    });
    test("Testing for [-2, -4, 0, -9, 2]", () {
      expect(maxTriSum([-2, -4, 0, -9, 2]), equals(0));
    });
    test("Testing for [-5, -1, -9, 0, 2]", () {
      expect(maxTriSum([-5, -1, -9, 0, 2]), equals(1));
    });
  });
}
