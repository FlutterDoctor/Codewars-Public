import 'package:test/test.dart';

//Instructions: You are given two interior angles (in degrees) of a triangle.

// Write a function to return the 3rd.

// Note: only positive integers will be tested.

// https://en.wikipedia.org/wiki/Triangle

//solution
int otherAngle(int a, int b) => 180 - (a + b);

//test
void main() {
  group('Basic tests', () {
    test("otherAngle(30, 60)", () => expect(otherAngle(30, 60), equals(90)));
    test("otherAngle(60, 60)", () => expect(otherAngle(60, 60), equals(60)));
    test("otherAngle(43, 78)", () => expect(otherAngle(43, 78), equals(59)));
    test("otherAngle(10, 20)", () => expect(otherAngle(10, 20), equals(150)));
  });
}
