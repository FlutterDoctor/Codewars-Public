import 'package:test/test.dart';

//Instructions: Scenario
// Now that the competition gets tough it will Sort out the men from the boys .

// Men are the Even numbers and Boys are the odd!alt!alt
// Task
// Given an array/list [] of n integers , Separate The even numbers from the odds , or Separate the men from the boys!alt!alt
// Notes
// Return an array/list where Even numbers come first then odds

// Since , Men are stronger than Boys , Then Even numbers in ascending order While odds in descending .

// Array/list size is at least 4 .

// Array/list numbers could be a mixture of positives , negatives .

// Have no fear , It is guaranteed that no Zeroes will exists .!alt
// Repetition of numbers in the array/list could occur , So (duplications are not included when separating).

// Input >> Output Examples:
// menFromBoys ({7, 3 , 14 , 17}) ==> return ({14, 17, 7, 3})
// Explanation:
// Since , { 14 } is the even number here , So it came first , then the odds in descending order {17 , 7 , 3} .

// menFromBoys ({-94, -99 , -100 , -99 , -96 , -99 }) ==> return ({-100 , -96 , -94 , -99})
// Explanation:
// Since , { -100, -96 , -94 } is the even numbers here , So it came first in *ascending order *, then the odds in descending order { -99 }

// Since , (Duplications are not included when separating) , then you can see only one (-99) was appeared in the final array/list .

// menFromBoys ({49 , 818 , -282 , 900 , 928 , 281 , -282 , -1 }) ==> return ({-282 , 818 , 900 , 928 , 281 , 49 , -1})
// Explanation:
// Since , {-282 , 818 , 900 , 928 } is the even numbers here , So it came first in ascending order , then the odds in descending order { 281 , 49 , -1 }

// Since , (Duplications are not included when separating) , then you can see only one (-282) was appeared in the final array/list .

//solution
List<int> menFromBoys(arr) {
  List<int> men = arr.where((i) => i % 2 == 0).toSet().toList();
  List<int> boys = arr.where((i) => i % 2 != 0).toSet().toList();
  men.sort();
  boys.sort((a, b) => b.compareTo(a));
  return men + boys;
}

//test
void main() {
  group('Fixed tests', () {
    test("Testing for [7, 3, 14, 17]", () {
      expect(menFromBoys([7, 3, 14, 17]), equals([14, 17, 7, 3]));
    });
    test("Testing for [2, 43, 95, 90, 37]", () {
      expect(menFromBoys([2, 43, 95, 90, 37]), equals([2, 90, 95, 43, 37]));
    });
    test("Testing for [20, 33, 50, 34, 43, 46]", () {
      expect(menFromBoys([20, 33, 50, 34, 43, 46]),
          equals([20, 34, 46, 50, 43, 33]));
    });
    test("Testing for [82, 91, 72, 76, 76, 100, 85]", () {
      expect(menFromBoys([82, 91, 72, 76, 76, 100, 85]),
          equals([72, 76, 82, 100, 91, 85]));
    });
    test("Testing for [2, 15, 17, 15, 2, 10, 10, 17, 1, 1]", () {
      expect(menFromBoys([2, 15, 17, 15, 2, 10, 10, 17, 1, 1]),
          equals([2, 10, 17, 15, 1]));
    });
    test("Testing for [-32, -39, -35, -41]", () {
      expect(menFromBoys([-32, -39, -35, -41]), equals([-32, -35, -39, -41]));
    });
    test("Testing for [-64, -71, -63, -66, -65]", () {
      expect(menFromBoys([-64, -71, -63, -66, -65]),
          equals([-66, -64, -63, -65, -71]));
    });
    test("Testing for [-94, -99, -100, -99, -96, -99]", () {
      expect(menFromBoys([-94, -99, -100, -99, -96, -99]),
          equals([-100, -96, -94, -99]));
    });
    test("Testing for [-53, -26, -53, -27, -49, -51, -14]", () {
      expect(menFromBoys([-53, -26, -53, -27, -49, -51, -14]),
          equals([-26, -14, -27, -49, -51, -53]));
    });
    test("Testing for [-17, -45, -15, -33, -85, -56, -86, -30]", () {
      expect(menFromBoys([-17, -45, -15, -33, -85, -56, -86, -30]),
          equals([-86, -56, -30, -15, -17, -33, -45, -85]));
    });
    test("Testing for [12, 89, -38, -78]", () {
      expect(menFromBoys([12, 89, -38, -78]), equals([-78, -38, 12, 89]));
    });
    test("Testing for [2, -43, 95, -90, 37]", () {
      expect(menFromBoys([2, -43, 95, -90, 37]), equals([-90, 2, 95, 37, -43]));
    });
    test("Testing for [82, -61, -87, -12, 21, 1]", () {
      expect(menFromBoys([82, -61, -87, -12, 21, 1]),
          equals([-12, 82, 21, 1, -61, -87]));
    });
    test("Testing for [63, -57, 76, -85, 88, 2, -28]", () {
      expect(menFromBoys([63, -57, 76, -85, 88, 2, -28]),
          equals([-28, 2, 76, 88, 63, -57, -85]));
    });
    test("Testing for [49, 818, -282, 900, 928, 281, -282, -1]", () {
      expect(menFromBoys([49, 818, -282, 900, 928, 281, -282, -1]),
          equals([-282, 818, 900, 928, 281, 49, -1]));
    });
  });
}
