import 'package:test/test.dart';

//Instructions:The drawing shows 6 squares the sides of which have a length of 1, 1, 2, 3, 5, 8. It's easy to see that the sum of the perimeters of these squares is : 4 * (1 + 1 + 2 + 3 + 5 + 8) = 4 * 20 = 80

// Could you give the sum of the perimeters of all the squares in a rectangle when there are n + 1 squares disposed in the same manner as in the drawing:

// alternative text

// Hint:
// See Fibonacci sequence

// Ref:
// http://oeis.org/A000045

// The function perimeter has for parameter n where n + 1 is the number of squares (they are numbered from 0 to n) and returns the total perimeter of all the squares.

// perimeter(5)  should return 80
// perimeter(7)  should return 216

//solution
BigInt perimeter(int m) {
  var a = BigInt.zero;
  var b = BigInt.one;
  var sum = BigInt.one;
  for (var i = 0; i < m; i++) {
    final c = a + b;
    a = b;
    b = c;
    sum += c;
  }
  return sum * BigInt.from(4);
}

//test
void main() {
  dotest(int n, String exp) {
    test("Testing for $n",
        () => expect(perimeter(n), equals(BigInt.parse(exp))));
  }

  group("fixed tests", () {
    dotest(5, "80");
    dotest(7, "216");
    dotest(20, "114624");
    dotest(30, "14098308");
    dotest(250, "133797491887924782725427226931777586764021526282323488");
  });
}
