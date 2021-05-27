import 'package:test/test.dart';

//Instructions:
// Task:
// Given a list of integers, determine whether the sum of its elements is odd or even.

// Give your answer as a string matching "odd" or "even".

// If the input array is empty consider it as: [0] (array with a zero).

// Examples:
// Input: [0]
// Output: "even"

// Input: [0, 1, 4]
// Output: "odd"

// Input: [0, -1, -5]
// Output: "even"

//solution
String oddOrEven(List<int> array) =>
    array.reduce((a, b) => a + b).isEven ? 'even' : 'odd';

//test
void main() {
  test("Test 1", () {
    expect(oddOrEven([1, 1]), equals("even"));
  });

  test("Test 2", () {
    expect(oddOrEven([1, 3]), equals("even"));
  });

  test("Test 3", () {
    expect(oddOrEven([-2, 3]), equals("odd"));
  });

  test("Test 4", () {
    expect(oddOrEven([-2, 2]), equals("even"));
  });

  test("Test 5", () {
    expect(oddOrEven([-2, 99, 99]), equals("even"));
  });

  test("Test 6", () {
    expect(oddOrEven([-100, 99]), equals("odd"));
  });

  test("Test 7", () {
    expect(oddOrEven([17, 21, 99]), equals("odd"));
  });

  test("Test 8", () {
    expect(oddOrEven([-2, 2, 9, 8, 3]), equals("even"));
  });
}
