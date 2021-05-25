import 'package:test/test.dart';

//Instructions: Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.

// invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
// invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
// invert([]) == []
// You can assume that all values are integers. Do not mutate the input array/list.

//solution
List<int> invert(List<int> arr) => arr.map((e) => -e).toList();

//test
void main() {
  group('basic tests', () {
    test("Testing for [1, 2, 3, 4, 5]",
        () => expect(invert([1, 2, 3, 4, 5]), equals([-1, -2, -3, -4, -5])));
    test("Testing for [1, -2, 3, -4, 5]",
        () => expect(invert([1, -2, 3, -4, 5]), equals([-1, 2, -3, 4, -5])));
    test("Testing for []", () => expect(invert([]), equals([])));
    test("Testing for [0]", () => expect(invert([0]), equals([0])));
  });
}
