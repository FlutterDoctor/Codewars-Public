import 'package:test/test.dart';
import 'dart:math';

//Instructions: My grandfather always predicted how old people would get, and right before he passed away he revealed his secret!

// In honor of my grandfather's memory we will write a function using his formula!

// Take a list of ages when each of your great-grandparent died.
// Multiply each number by itself.
// Add them all together.
// Take the square root of the result.
// Divide by two.
// Example
// predictAge(65, 60, 75, 55, 60, 63, 64, 45) === 86
// Note: the result should be rounded down to the nearest integer.

//solution
int predictAge(int age1, int age2, int age3, int age4, int age5, int age6,
    int age7, int age8) {
  List<int> start = [age1, age2, age3, age4, age5, age6, age7, age8];
  var multi = 0;
  for (int i = 0; i < start.length; i++) {
    multi += pow(start[i], 2);
  }
  return sqrt(multi) ~/ 2;
}

//test
void main() {
  test('predictAge(65,60,75,55,60,63,64,45) equals 86', () {
    expect(predictAge(65, 60, 75, 55, 60, 63, 64, 45), equals(86));
  });
  test('predictAge(32,54,76,65,34,63,64,45), equals 79', () {
    expect(predictAge(32, 54, 76, 65, 34, 63, 64, 45), equals(79));
  });
}
