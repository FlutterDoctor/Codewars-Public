import 'package:test/test.dart';

//Instructions: Given the triangle of consecutive odd numbers:

//              1
//           3     5
//        7     9    11
//    13    15    17    19
// 21    23    25    27    29
// ...
// Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.:

// rowSumOddNumbers(1); // 1
// rowSumOddNumbers(2); // 3 + 5 = 8

//solution
int rowSumOddNumbers(int n) {
  var a = n * (n + 1) ~/ 2; // max number of numbers
  var b = a * 2 - 1; //highest number
  var c = a - n + 1; // lowest number of numbers
  var d = c * 2 - 1; // lowest number
  var e = 0;

  for (var i = d; i <= b; i += 2) {
    e += i;
  }
  return e;
}

//test
void main() {
  group("basic tests", () {
    test("Testing for 1", () => expect(rowSumOddNumbers(1), equals(1)));
    test("Testing for 2", () => expect(rowSumOddNumbers(2), equals(8)));
    test("Testing for 13", () => expect(rowSumOddNumbers(13), equals(2197)));
    test("Testing for 19", () => expect(rowSumOddNumbers(19), equals(6859)));
    test("Testing for 41", () => expect(rowSumOddNumbers(41), equals(68921)));
    test("Testing for 42", () => expect(rowSumOddNumbers(42), equals(74088)));
    test("Testing for 74", () => expect(rowSumOddNumbers(74), equals(405224)));
    test("Testing for 86", () => expect(rowSumOddNumbers(86), equals(636056)));
    test("Testing for 93", () => expect(rowSumOddNumbers(93), equals(804357)));
    test("Testing for 101",
        () => expect(rowSumOddNumbers(101), equals(1030301)));
  });
}
