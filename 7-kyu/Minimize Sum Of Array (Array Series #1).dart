import 'package:test/test.dart';

//Instructions: Task
// Given an array of integers , Find the minimum sum which is obtained from summing each Two integers product .

// Notes
// Array/list will contain positives only .
// Array/list will always has even size
// Input >> Output Examples
// minSum({5,4,2,3}) ==> return (22)
// Explanation:
// The minimum sum obtained from summing each two integers product , 5*2 + 3*4 = 22
// minSum({12,6,10,26,3,24}) ==> return (342)
// Explanation:
// The minimum sum obtained from summing each two integers product , 26*3 + 24*6 + 12*10 = 342
// minSum({9,2,8,7,5,4,0,6}) ==> return (74)
// Explanation:
// The minimum sum obtained from summing each two integers product , 9*0 + 8*2 +7*4 +6*5 = 74

//solution
int minSum(arr) {
  arr.sort();
  int ttl = 0;
  for (int i = 0; i < arr.length / 2; i++) {
    ttl += arr[i] * arr[arr.length - 1 - i];
  }
  return ttl;
}

//test
void main() {
  group("Fixed tests", () {
    test("Testing for [5, 4, 2, 3]", () {
      expect(minSum([5, 4, 2, 3]), equals(22));
    });
    test("Testing for [12, 6, 10, 26, 3, 24]", () {
      expect(minSum([12, 6, 10, 26, 3, 24]), equals(342));
    });
    test("Testing for [9, 2, 8, 7, 5, 4, 0, 6]", () {
      expect(minSum([9, 2, 8, 7, 5, 4, 0, 6]), equals(74));
    });
    test("Testing for [1, 2, 3, 4]", () {
      expect(minSum([1, 2, 3, 4]), equals(10));
    });
    test("Testing for [5, 1, 9, 3, 7, 7, 2, 10]", () {
      expect(minSum([5, 1, 9, 3, 7, 7, 2, 10]), equals(84));
    });
  });
}
