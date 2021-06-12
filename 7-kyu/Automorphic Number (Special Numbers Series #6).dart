import 'package:test/test.dart';

//Instructions:
// Definition
// A number is called Automorphic number if and only if its square ends in the same digits as the number itself.

// Task
// Given a number determine if it Automorphic or not .

// Warm-up (Highly recommended)
// Playing With Numbers Series
// Notes
// The number passed to the function is positive
// Input >> Output Examples
// autoMorphic (25) -->> return "Automorphic"
// Explanation:
// 25 squared is 625 , Ends with the same number's digits which are 25 .
// autoMorphic (13) -->> return "Not!!"
// Explanation:
// 13 squared is 169 , Not ending with the same number's digits which are 69 .
// autoMorphic (76) -->> return "Automorphic"
// Explanation:
// 76 squared is 5776 , Ends with the same number's digits which are 76 .
// autoMorphic (225) -->> return "Not!!"
// Explanation:
// 225 squared is 50625 , Not ending with the same number's digits which are 225 .
// autoMorphic (625) -->> return "Automorphic"
// Explanation:
// 625 squared is 390625 , Ends with the same number's digits which are 625 .
// autoMorphic (1) -->> return "Automorphic"
// Explanation:
// 1 squared is 1 , Ends with the same number's digits which are 1 .
// autoMorphic (6) -->> return "Automorphic"
// Explanation:
// 6 squared is 36 , Ends with the same number's digits which are 6

//solution
import 'dart:math';

String automorphic(n) =>
    pow(n, 2).toString().endsWith(n.toString()) ? "Automorphic" : "Not!!";

//test
void main() {
  group('Fixed tests', () {
    test("Testing for 1", () {
      expect(automorphic(1), equals("Automorphic"));
    });
    test("Testing for 3", () {
      expect(automorphic(3), equals("Not!!"));
    });
    test("Testing for 6", () {
      expect(automorphic(6), equals("Automorphic"));
    });
    test("Testing for 9", () {
      expect(automorphic(9), equals("Not!!"));
    });
    test("Testing for 25", () {
      expect(automorphic(25), equals("Automorphic"));
    });
    test("Testing for 53", () {
      expect(automorphic(53), equals("Not!!"));
    });
    test("Testing for 76", () {
      expect(automorphic(76), equals("Automorphic"));
    });
    test("Testing for 95", () {
      expect(automorphic(95), equals("Not!!"));
    });
    test("Testing for 625", () {
      expect(automorphic(625), equals("Automorphic"));
    });
    test("Testing for 225", () {
      expect(automorphic(225), equals("Not!!"));
    });
  });
}
