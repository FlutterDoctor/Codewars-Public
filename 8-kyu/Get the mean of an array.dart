import 'package:test/test.dart';

//Instructions:
// It's the academic year's end, fateful moment of your school report. The averages must be calculated. All the students come to you and entreat you to calculate their average for them. Easy ! You just need to write a script.

// Return the average of the given array rounded down to its nearest integer.

// The array will never be empty.

//solution
int getAverage(List<int> arr) =>
    arr.reduce((e, d) => e + d) ~/ arr.length.floor();

//test
void main() {
  group("Fixed tests", () {
    test("Testing for [2, 2, 2, 2]",
        () => expect(getAverage([2, 2, 2, 2]), equals(2)));
    test("Testing for [1, 2, 3, 4, 5]",
        () => expect(getAverage([1, 2, 3, 4, 5]), equals(3)));
    test("Testing for [1, 1, 1, 1, 1, 1, 1, 2]",
        () => expect(getAverage([1, 1, 1, 1, 1, 1, 1, 2]), equals(1)));
  });
}
