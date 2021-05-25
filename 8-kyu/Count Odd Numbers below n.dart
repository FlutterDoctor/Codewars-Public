import 'package:test/test.dart';

//Instructions:
// Given a number n, return the number of positive odd numbers below n, EASY!

// oddCount(7) //=> 3, i.e [1, 3, 5]
// oddCount(15) //=> 7, i.e [1, 3, 5, 7, 9, 11, 13]
// Expect large Inputs!

//solution
int oddCount(n) => n ~/ 2;

//test
void main() {
  group("basic tests", () {
    test('testing for 15', () {
      expect(oddCount(15), equals(7));
    });
    test('testing for 15023', () {
      expect(oddCount(15023), equals(7511));
    });
  });
}
