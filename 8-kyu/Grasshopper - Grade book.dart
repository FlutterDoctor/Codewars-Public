import 'package:test/test.dart';

//Instructions: Grade book
// Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.

// Numerical Score	Letter Grade
// 90 <= score <= 100	'A'
// 80 <= score < 90	'B'
// 70 <= score < 80	'C'
// 60 <= score < 70	'D'
// 0 <= score < 60	'F'
// Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.

//solution
String getGrade(int a, int b, int c) {
  var total = (a + b + c) ~/ 3;

  if (total >= 90) {
    return 'A';
  } else if (total >= 80) {
    return 'B';
  } else if (total >= 70) {
    return 'C';
  } else if (total >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

//test
void main() {
  group('Fixed tests', () {
    test("getGrade(95, 90, 93)",
        () => expect(getGrade(95, 90, 93), equals('A')));
    test("getGrade(100, 85, 96)",
        () => expect(getGrade(100, 85, 96), equals('A')));
    test("getGrade(92, 93, 94)",
        () => expect(getGrade(92, 93, 94), equals('A')));
    test("getGrade(100, 100, 100)",
        () => expect(getGrade(100, 100, 100), equals('A')));
    test("getGrade(70, 70, 100)",
        () => expect(getGrade(70, 70, 100), equals('B')));
    test("getGrade(82, 85, 87)",
        () => expect(getGrade(82, 85, 87), equals('B')));
    test("getGrade(84, 79, 85)",
        () => expect(getGrade(84, 79, 85), equals('B')));
    test("getGrade(70, 70, 70)",
        () => expect(getGrade(70, 70, 70), equals('C')));
    test("getGrade(75, 70, 79)",
        () => expect(getGrade(75, 70, 79), equals('C')));
    test("getGrade(60, 82, 76)",
        () => expect(getGrade(60, 82, 76), equals('C')));
    test("getGrade(65, 70, 59)",
        () => expect(getGrade(65, 70, 59), equals('D')));
    test("getGrade(66, 62, 68)",
        () => expect(getGrade(66, 62, 68), equals('D')));
    test("getGrade(58, 62, 70)",
        () => expect(getGrade(58, 62, 70), equals('D')));
    test("getGrade(44, 55, 52)",
        () => expect(getGrade(44, 55, 52), equals('F')));
    test("getGrade(48, 55, 52)",
        () => expect(getGrade(48, 55, 52), equals('F')));
    test("getGrade(58, 59, 60)",
        () => expect(getGrade(58, 59, 60), equals('F')));
    test("getGrade(0, 0, 0)", () => expect(getGrade(0, 0, 0), equals('F')));
  });
}
