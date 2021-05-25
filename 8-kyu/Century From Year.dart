import 'package:test/test.dart';

//Instructions: Introduction
// The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and including the year 200, etc.

// Task :
// Given a year, return the century it is in.

// Input , Output Examples :
// 1705 --> 18
// 1900 --> 19
// 1601 --> 17
// 2000 --> 20

//solution
int century(year) => year % 100 == 0 ? year ~/ 100 : year ~/ 100 + 1;

//test
void main() {
  group("Basic tests", () {
    test("Testing for 1705", () {
      expect(century(1705), equals(18));
    });
    test("Testing for 1900", () {
      expect(century(1900), equals(19));
    });
    test("Testing for 1601", () {
      expect(century(1601), equals(17));
    });
    test("Testing for 2000", () {
      expect(century(2000), equals(20));
    });
    test("Testing for 89", () {
      expect(century(89), equals(1));
    });
  });
}
