import 'package:test/test.dart';
import 'dart:core';
import 'dart:math';
//Instructions: Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.

// 1st (1)   2nd (3)    3rd (6)
// *          **        ***
//            *         **
//                      *
// You need to return the nth triangular number. You should return 0 for out of range values:

// For example: (Input --> Output)

// 0 --> 0
// 2 --> 3
// 3 --> 6
// -10 --> 0

//solution
triangular(n) {
  num nn = n ~/ 2;
  num ttl = pow(n, 2) ~/ 2 + nn;

  if (ttl.isNegative) {
    return 0;
  }
  if (n == 1) {
    return 1;
  }
  if (ttl.round() == 0) {
    return 0;
  }
  if (n.floor().isOdd) {
    return ttl.round() + 1;
  } else {
    return ttl.round();
  }
}

//test
void main() {
  test('Basic tests', () {
    expect(triangular(2), equals(3));
    expect(triangular(4), equals(10));
    expect(triangular(9), equals(45));
    expect(triangular(-9), equals(0));
  });
}
