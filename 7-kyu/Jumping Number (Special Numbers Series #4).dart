import 'package:test/test.dart';

//Instructions:
// Definition
// Jumping number is the number that All adjacent digits in it differ by 1.

// Task
// Given a number, Find if it is Jumping or not .

// Warm-up (Highly recommended)
// Playing With Numbers Series
// Notes
// Number passed is always Positive .

// Return the result as String .

// The difference between ‘9’ and ‘0’ is not considered as 1 .

// All single digit numbers are considered as Jumping numbers.

// Input >> Output Examples
// jumpingNumber(9) ==> return "Jumping!!"
// Explanation:
// It's single-digit number
// jumpingNumber(79) ==> return "Not!!"
// Explanation:
// Adjacent digits don't differ by 1
// jumpingNumber(23) ==> return "Jumping!!"
// Explanation:
// Adjacent digits differ by 1
// jumpingNumber(556847) ==> return "Not!!"
// Explanation:
// Adjacent digits don't differ by 1
// jumpingNumber(4343456) ==> return "Jumping!!"
// Explanation:
// Adjacent digits differ by 1
// jumpingNumber(89098) ==> return "Not!!"
// Explanation:
// Adjacent digits don't differ by 1
// jumpingNumber(32) ==> return "Jumping!!"
// Explanation:
// Adjacent digits differ by 1

//solution
String jumpingNumber(n) {
  final number = n.toString().split('').map(int.parse).toList();
  for (int i = 1; i < number.length; i++) {
    final difference = number[i - 1] - number[i];
    if (difference.abs() != 1) {
      return 'Not!!';
    }
  }
  return 'Jumping!!';
}

//test
void main() {
  group("Fixed tests", () {
    test("Testing for 1", () {
      expect(jumpingNumber(1), equals("Jumping!!"));
    });
    test("Testing for 7", () {
      expect(jumpingNumber(7), equals("Jumping!!"));
    });
    test("Testing for 9", () {
      expect(jumpingNumber(9), equals("Jumping!!"));
    });
    test("Testing for 23", () {
      expect(jumpingNumber(23), equals("Jumping!!"));
    });
    test("Testing for 32", () {
      expect(jumpingNumber(32), equals("Jumping!!"));
    });
    test("Testing for 79", () {
      expect(jumpingNumber(79), equals("Not!!"));
    });
    test("Testing for 98", () {
      expect(jumpingNumber(98), equals("Jumping!!"));
    });
    test("Testing for 8987", () {
      expect(jumpingNumber(8987), equals("Jumping!!"));
    });
    test("Testing for 4343456", () {
      expect(jumpingNumber(4343456), equals("Jumping!!"));
    });
    test("Testing for 98789876", () {
      expect(jumpingNumber(98789876), equals("Jumping!!"));
    });
  });
}
