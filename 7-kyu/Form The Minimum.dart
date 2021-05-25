import 'package:test/test.dart';

//Instructions: Task
// Given a list of digits, return the smallest number that could be formed from these digits, using the digits only once (ignore duplicates).

// Notes:
// Only positive integers will be passed to the function (> 0 ), no negatives or zeros.
// Input >> Output Examples
// minValue ({1, 3, 1})  ==> return (13)
// Explanation:
// (13) is the minimum number could be formed from {1, 3, 1} , Without duplications

// minValue({5, 7, 5, 9, 7})  ==> return (579)
// Explanation:
// (579) is the minimum number could be formed from {5, 7, 5, 9, 7} , Without duplications

// minValue({1, 9, 3, 1, 7, 4, 6, 6, 7}) return  ==> (134679)
// Explanation:
// (134679) is the minimum number could be formed from {1, 9, 3, 1, 7, 4, 6, 6, 7} , Without duplications

//solution
int minValue(arr) => int.parse((arr..sort()).toSet().join());

//test
void main() {
  group("Fixed tests", () {
    test("Testing for [1, 3, 1]", () {
      expect(minValue([1, 3, 1]), equals(13));
    });
    test("Testing for [4, 7, 5, 7]", () {
      expect(minValue([4, 7, 5, 7]), equals(457));
    });
    test("Testing for [4, 8, 1, 4]", () {
      expect(minValue([4, 8, 1, 4]), equals(148));
    });
    test("Testing for [5, 7, 9, 5, 7]", () {
      expect(minValue([5, 7, 9, 5, 7]), equals(579));
    });
    test("Testing for [6, 7, 8, 7, 6, 6]", () {
      expect(minValue([6, 7, 8, 7, 6, 6]), equals(678));
    });
    test("Testing for [5, 6, 9, 9, 7, 6, 4]", () {
      expect(minValue([5, 6, 9, 9, 7, 6, 4]), equals(45679));
    });
    test("Testing for [1, 9, 1, 3, 7, 4, 6, 6, 7]", () {
      expect(minValue([1, 9, 1, 3, 7, 4, 6, 6, 7]), equals(134679));
    });
    test("Testing for [3, 6, 5, 5, 9, 8, 7, 6, 3, 5, 9]", () {
      expect(minValue([3, 6, 5, 5, 9, 8, 7, 6, 3, 5, 9]), equals(356789));
    });
    test("Testing for [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]", () {
      expect(minValue([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]), equals(1));
    });
    test("Testing for [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]", () {
      expect(minValue([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]), equals(0));
    });
  });
}
