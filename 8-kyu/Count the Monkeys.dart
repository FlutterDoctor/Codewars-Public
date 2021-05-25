import 'package:test/test.dart';

//Instructions:
// You take your son to the forest to see the monkeys. You know that there are a certain number there (n), but your son is too young to just appreciate the full number, he has to start counting them from 1.

// As a good parent, you will sit and count with him. Given the number (n), populate an array with all numbers up to and including that number, but excluding zero.

// For example:

// monkeyCount(10) // --> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// monkeyCount(1) // --> [1]

//solution
List<int> monkeyCount(int n) => [for (int i = 1; i <= n; i++) i];

//test
void main() {
  group("Fixed tests", () {
    test("Testing for 5", () {
      expect(monkeyCount(5), equals([1, 2, 3, 4, 5]));
    });
    test("Testing for 3", () {
      expect(monkeyCount(3), equals([1, 2, 3]));
    });
    test("Testing for 9", () {
      expect(monkeyCount(9), equals([1, 2, 3, 4, 5, 6, 7, 8, 9]));
    });
    test("Testing for 10", () {
      expect(monkeyCount(10), equals([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
    });
    test("Testing for 20", () {
      expect(
          monkeyCount(20),
          equals([
            1,
            2,
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            10,
            11,
            12,
            13,
            14,
            15,
            16,
            17,
            18,
            19,
            20
          ]));
    });
  });
}
