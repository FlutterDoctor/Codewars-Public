import 'package:test/test.dart';

//Instructions: You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

// Examples
// [2, 4, 0, 100, 4, 11, 2602, 36]
// Should return: 11 (the only odd number)

// [160, 3, 1719, 19, 11, 13, -21]
// Should return: 160 (the only even number)

//solution
int find(List inte) {
  var even = (inte.where((i) => i.isEven).length == 1);
  return inte.firstWhere((i) => even ? i.isEven : i.isOdd);
}

//test
void main() {
  test('Example test 1', () {
    expect(find([99, 77, 331, 717, 89, 22073, 8, 7, 101]), equals(8));
  });
  test('Example test 2', () {
    expect(find([2254, 29, 98427000020]), equals(29));
  });
}
