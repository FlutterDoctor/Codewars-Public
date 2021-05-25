import 'package:test/test.dart';

//Instructions: You are given an odd-length array of integers, in which all of them are the same, except for one single number.

// Complete the method which accepts such an array, and returns that single different number.

// The input array will always be valid! (odd-length >= 3)

// Examples
// [1, 1, 2] ==> 2
// [17, 17, 3, 17, 17, 17, 17] ==> 3

//solution
int stray(numbers) {
  int strayChar = numbers[1];
  for (var i = 0; i <= numbers.length; i++) {
    if (strayChar != numbers[i]) {
      return strayChar = numbers[i];
    }
  }
  return 8;
}

//test
void main() {
  group("Fixed tests", () {
    test('Testing for [1, 1, 2]', () {
      expect(stray([1, 1, 2]), equals(2));
    });
    test('Testing for [17, 17, 3, 17, 17, 17, 17]', () {
      expect(stray([17, 17, 3, 17, 17, 17, 17]), equals(3));
    });
    test('Testing for [8, 1, 1, 1, 1, 1, 1]', () {
      expect(stray([8, 1, 1, 1, 1, 1, 1]), equals(8));
    });
    test('Testing for [1, 1, 1, 1, 1, 1, 0]', () {
      expect(stray([1, 1, 1, 1, 1, 1, 0]), equals(0));
    });
    test('Testing for [0, 0, 0, 7, 0, 0, 0]', () {
      expect(stray([0, 0, 0, 7, 0, 0, 0]), equals(7));
    });
    test('Testing for [-21, -21, -21, -21, -6, -21, -21]', () {
      expect(stray([-21, -21, -21, -21, -6, -21, -21]), equals(-6));
    });
  });
}
