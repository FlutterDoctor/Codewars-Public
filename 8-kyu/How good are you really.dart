import 'package:test/test.dart';

//Instructions:There was a test in your class and you passed it. Congratulations!
// But you're an ambitious person. You want to know if you're better than the average student in your class.

// You receive an array with your peers' test scores. Now calculate the average and compare your score!

// Return True if you're better, else False!

// Note:
// Your points are not included in the array of your class's points. For calculating the average point you may add your point to the given array!

//solution
bool betterThanAverage(List<int> cl, int yp) {
  var addPoints = cl.reduce((a, b) => a + b);
  var total = addPoints + yp;
  var avg = total ~/ cl.length;
  if (avg > yp) {
    return false;
  } else {
    return true;
  }
}

//test
void main() {
  group("Fixed tests", () {
    test("betterThanAverage([2, 3], 5)",
        () => expect(betterThanAverage([2, 3], 5), equals(true)));
    test(
        "betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75)",
        () => expect(betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75),
            equals(true)));
    test(
        "betterThanAverage([12, 23, 34, 45, 56, 67, 78, 89, 90], 69)",
        () => expect(
            betterThanAverage([12, 23, 34, 45, 56, 67, 78, 89, 90], 69),
            equals(true)));
  });
}
