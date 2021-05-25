import 'package:test/test.dart';

//Instructions: Given an array of integers, return a new array with each value doubled.

// For example:

// [1, 2, 3] --> [2, 4, 6]

// For the beginner, try to use the map method - it comes in very handy quite a lot so is a good one to know.

//solution
List<int> maps(List<int> arr) => arr.map((e) => e * 2).toList();

//test
void main() {
  group("basic tests", () {
    test("Testing for [1, 2, 3]",
        () => expect(maps([1, 2, 3]), equals([2, 4, 6])));
    test("Testing for [4, 1, 1, 1, 4]",
        () => expect(maps([4, 1, 1, 1, 4]), equals([8, 2, 2, 2, 8])));
    test("Testing for [2, 2, 2, 2, 2, 2]",
        () => expect(maps([2, 2, 2, 2, 2, 2]), equals([4, 4, 4, 4, 4, 4])));
  });
}
