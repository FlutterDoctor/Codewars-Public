import 'package:test/test.dart';

//Instructions:
// Definition
// A number is a Special Number if it’s digits only consist 0, 1, 2, 3, 4 or 5

// Given a number determine if it special number or not .

// Warm-up (Highly recommended)
// Playing With Numbers Series
// Notes
// The number passed will be positive (N > 0) .

// All single-digit numbers with in the interval [0:5] are considered as special number.

// Input >> Output Examples
// specialNumber(2) ==> return "Special!!"
// Explanation:
// It's a single-digit number within the interval [0:5] .

// specialNumber(9) ==> return "NOT!!"
// Explanation:
// Although, it's a single-digit number but Outside the interval [0:5] .

// specialNumber(23) ==> return "Special!!"
// Explanation:
// All the number's digits formed from the interval [0:5] digits .

// specialNumber(39) ==> return "NOT!!"
// Explanation:
// Although, there is a digit (3) Within the interval But the second digit is not (Must be ALL The Number's Digits ) .

// specialNumber(59) ==> return "NOT!!"
// Explanation:
// Although, there is a digit (5) Within the interval But the second digit is not (Must be ALL The Number's Digits ) .

// specialNumber(513) ==> return "Special!!"
// specialNumber(709) ==> return "NOT!!"

//solution
String specialNumber(n) {
  var numbers = n.toString().split('').map(int.parse).toList();
  var count = 0;
  for (var i = 0; i < numbers.length; i++) {
    numbers[i] < 6 ? count++ : count--;
  }
  return count == numbers.length ? "Special!!" : "NOT!!";
}

//test
void main() {
  group('Fixed tests', () {
    test('Testing for 2', () {
      expect(specialNumber(2), equals("Special!!"));
    });
    test('Testing for 3', () {
      expect(specialNumber(3), equals("Special!!"));
    });
    test('Testing for 6', () {
      expect(specialNumber(6), equals("NOT!!"));
    });
    test('Testing for 9', () {
      expect(specialNumber(9), equals("NOT!!"));
    });
    test('Testing for 11', () {
      expect(specialNumber(11), equals("Special!!"));
    });
    test('Testing for 55', () {
      expect(specialNumber(55), equals("Special!!"));
    });
    test('Testing for 26', () {
      expect(specialNumber(26), equals("NOT!!"));
    });
    test('Testing for 92', () {
      expect(specialNumber(92), equals("NOT!!"));
    });
    test('Testing for 25432', () {
      expect(specialNumber(25432), equals("Special!!"));
    });
    test('Testing for 2783', () {
      expect(specialNumber(2783), equals("NOT!!"));
    });
  });
}
