import 'package:test/test.dart';

//Instructions:Summation
// Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.

// For example:

// summation(2) -> 3
// 1 + 2

// summation(8) -> 36
// 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8

//solution
int summation(int n) {
  return n * (n + 1) ~/ 2;
}

//test
void main() {
  group("Basic tests", () {
    test("Testing for 1", () => expect(summation(1), equals(1)));
    test("Testing for 8", () => expect(summation(8), equals(36)));
    test("Testing for 22", () => expect(summation(22), equals(253)));
    test("Testing for 100", () => expect(summation(100), equals(5050)));
    test("Testing for 213", () => expect(summation(213), equals(22791)));
  });
}
