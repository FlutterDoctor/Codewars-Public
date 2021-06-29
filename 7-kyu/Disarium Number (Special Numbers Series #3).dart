import 'package:test/test.dart';

//Instructions:
// Definition
// Disarium number is the number that The sum of its digits powered with their respective positions is equal to the number itself.

// Task
// Given a number, Find if it is Disarium or not .

// Warm-up (Highly recommended)
// Playing With Numbers Series
// Notes
// Number passed is always Positive .
// Return the result as String
// Input >> Output Examples
// disariumNumber(89) ==> return "Disarium !!"
// Explanation:
// Since , 81 + 92 = 89 , thus output is "Disarium !!"
// disariumNumber(564) ==> return "Not !!"
// Explanation:
// Since , 51 + 62 + 43 = 105 != 564 , thus output is "Not !!"

//solution
import 'dart:math';

String disariumNumber(n) {
  var x = n.toString().split('');
  var z = 0;

  for (var i = 0; i < x.length; i++) {
    z += pow(int.parse(x[i]), i + 1);
  }
  return z == n ? "Disarium !!" : "Not !!";
}

//test
void main() {
  group("Fixed tests", () {
    test("Testing for 89",
        () => expect(disariumNumber(89), equals("Disarium !!")));
    test(
        "Testing for 564", () => expect(disariumNumber(564), equals("Not !!")));
    test("Testing for 1024",
        () => expect(disariumNumber(1024), equals("Not !!")));
    test("Testing for 135",
        () => expect(disariumNumber(135), equals("Disarium !!")));
    test("Testing for 136586",
        () => expect(disariumNumber(136586), equals("Not !!")));
  });
}
