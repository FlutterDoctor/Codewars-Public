import 'package:test/test.dart';

//Instructions:
// Definition
// Strong number is the number that the sum of the factorial of its digits is equal to number itself.

// For example: 145, since
// 1! + 4! + 5! = 1 + 24 + 120 = 145
// So, 145 is a Strong number.

// Task
// Given a number, Find if it is Strong or not.

// Warm-up (Highly recommended)
// Playing With Numbers Series
// Notes
// Number passed is always Positive.
// Return the result as String
// Input >> Output Examples
// strong_num(1) ==> return "STRONG!!!!"
// Explanation:
// Since , the sum of its digits' factorial of (1) is equal to number itself (1) , Then its a Strong .

// strong_num(123) ==> return "Not Strong !!"
// Explanation:
// Since the sum of its digits' factorial of 1! + 2! + 3! = 9 is not equal to number itself (123) , Then it's Not Strong .

// strong_num(2)  ==>  return "STRONG!!!!"
// Explanation:
// Since the sum of its digits' factorial of 2! = 2 is equal to number itself (2) , Then its a Strong .

// strong_num(150) ==> return "Not Strong !!"
// Explanation:
// Since the sum of its digits' factorial of 1! + 5! + 0! = 122 is not equal to number itself (150), Then it's Not Strong .

//solution
int factorial(int n) => n == 0 ? 1 : n * factorial(n - 1);
String strong(n) {
  final sum = n
      .toString()
      .split('')
      .map((num) => factorial(int.parse(num)))
      .fold(0, (a, b) => a + b);
  return sum == n ? "STRONG!!!!" : "Not Strong !!";
}

//test
void main() {
  group("Fixed tests", () {
    test("Testing for 1", () {
      expect(strong(1), equals("STRONG!!!!"));
    });
    test("Testing for 2", () {
      expect(strong(2), equals("STRONG!!!!"));
    });
    test("Testing for 145", () {
      expect(strong(145), equals("STRONG!!!!"));
    });
    test("Testing for 7", () {
      expect(strong(7), equals("Not Strong !!"));
    });
    test("Testing for 93", () {
      expect(strong(93), equals("Not Strong !!"));
    });
    test("Testing for 185", () {
      expect(strong(185), equals("Not Strong !!"));
    });
  });
}
