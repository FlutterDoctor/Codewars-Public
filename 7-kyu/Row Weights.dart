import 'package:test/test.dart';

//Instructions: Scenario
// Several people are standing in a row divided into two teams.
// The first person goes into team 1, the second goes into team 2, the third goes into team 1, and so on.

// Task
// Given an array of positive integers (the weights of the people), return a new array/tuple of two integers, where the first one is the total weight of team 1, and the second one is the total weight of team 2.

// Notes
// Array size is at least 1.
// All numbers will be positive.
// Input >> Output Examples
// rowWeights([13, 27, 49])  ==>  return (62, 27)
// Explanation:
// The first element 62 is the total weight of team 1, and the second element 27 is the total weight of team 2.

// rowWeights([50, 60, 70, 80])  ==>  return (120, 140)
// Explanation:
// The first element 120 is the total weight of team 1, and the second element 140 is the total weight of team 2.

// rowWeights([80])  ==>  return (80, 0)
// Explanation:
// The first element 80 is the total weight of team 1, and the second element 0 is the total weight of team 2.




//solution
List<int> rowWeights(arr) {
int one = 0;
int two = 0;
  for(int i = 0; i < arr.length; i += 2){
   one +=  arr[i];
  }
  for(int j = 1; j < arr.length; j += 2){
   two += arr[j];
  }
  return [one, two];
}

//test
void main() {
group("Fixed tests", () {
    test("Testing for [80]", () {
      expect(rowWeights([80]), equals([80, 0]));
    });
    test("Testing for [100, 50]", () {
      expect(rowWeights([100, 50]), equals([100, 50]));
    });
    test("Testing for [50, 60, 70, 80]", () {
      expect(rowWeights([50, 60, 70, 80]), equals([120, 140]));
    });
    test("Testing for [13, 27, 49]", () {
      expect(rowWeights([13, 27, 49]), equals([62, 27]));
    });
    test("Testing for [70, 58, 75, 34, 91]", () {
      expect(rowWeights([70, 58, 75, 34, 91]), equals([236, 92]));
    });
    test("Testing for [29, 83, 67, 53, 19, 28, 96]", () {
      expect(rowWeights([29, 83, 67, 53, 19, 28, 96]), equals([211, 164]));
    });
    test("Testing for [0]", () {
      expect(rowWeights([0]), equals([0, 0]));
    });
    test("Testing for [100, 51, 50, 100]", () {
      expect(rowWeights([100, 51, 50, 100]), equals([150, 151]));
    });
    test("Testing for [39, 84, 74, 18, 59, 72, 35, 61]", () {
      expect(rowWeights([39, 84, 74, 18, 59, 72, 35, 61]), equals([207, 235]));
    });
    test("Testing for [0, 1, 0]", () {
      expect(rowWeights([0, 1, 0]), equals([0, 1]));
    });
  });
}