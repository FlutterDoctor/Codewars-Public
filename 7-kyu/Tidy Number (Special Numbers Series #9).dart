import 'package:test/test.dart';

//Instructions:
// Definition
// A Tidy number is a number whose digits are in non-decreasing order.

// Task
// Given a number, Find if it is Tidy or not .

// Warm-up (Highly recommended)
// Playing With Numbers Series
// Notes
// Number passed is always Positive .

// Return the result as a Boolean

// Input >> Output Examples
// tidyNumber (12) ==> return (true)
// Explanation:
// The number's digits { 1 , 2 } are in non-Decreasing Order (i.e) 1 <= 2 .

// tidyNumber (32) ==> return (false)
// Explanation:
// The Number's Digits { 3, 2} are not in non-Decreasing Order (i.e) 3 > 2 .

// tidyNumber (1024) ==> return (false)
// Explanation:
// The Number's Digits {1 , 0, 2, 4} are not in non-Decreasing Order as 0 <= 1 .

//solution
bool tidyNumber(n) {
  var numb = n.toString().split('');
  numb.sort();
  return numb.join() == n.toString();
}

//test
void main() {
  group("Fixed tests", () {
    test("Testing for 12", () {
      expect(tidyNumber(12), equals(true));
    });
    test("Testing for 102", () {
      expect(tidyNumber(102), equals(false));
    });
    test("Testing for 9672", () {
      expect(tidyNumber(9672), equals(false));
    });
    test("Testing for 2789", () {
      expect(tidyNumber(2789), equals(true));
    });
    test("Testing for 2335", () {
      expect(tidyNumber(2335), equals(true));
    });
  });
}
