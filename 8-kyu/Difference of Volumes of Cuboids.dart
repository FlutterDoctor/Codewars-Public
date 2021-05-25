import 'package:test/test.dart';

//Instructions: In this simple exercise, you will create a program that will take two lists of integers, a and b. Each list will consist of 3 positive integers above 0, representing the dimensions of cuboids a and b. You must find the difference of the cuboids' volumes regardless of which is bigger.

// For example, if the parameters passed are ([2, 2, 3], [5, 4, 1]), the volume of a is 12 and the volume of b is 20. Therefore, the function should return 8.

// Your function will be tested with pre-made examples as well as random ones.

//solution
int findDifference(List<int> a, List<int> b) =>
    (a[0] * a[1] * a[2] - b[0] * b[1] * b[2]).abs();

//test
void main() {
  group('basic tests', () {
    test("findDifference([3, 2, 5], [1, 4, 4])",
        () => expect(findDifference([3, 2, 5], [1, 4, 4]), equals(14)));
    test("findDifference([9, 7, 2], [5, 2, 2])",
        () => expect(findDifference([9, 7, 2], [5, 2, 2]), equals(106)));
    test("findDifference([11, 2, 5], [1, 10, 8])",
        () => expect(findDifference([11, 2, 5], [1, 10, 8]), equals(30)));
    test("findDifference([4, 4, 7], [3, 9, 3])",
        () => expect(findDifference([4, 4, 7], [3, 9, 3]), equals(31)));
    test("findDifference([15, 20, 25], [10, 30, 25])",
        () => expect(findDifference([15, 20, 25], [10, 30, 25]), equals(0)));
  });
}
