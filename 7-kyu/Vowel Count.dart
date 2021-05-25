import 'package:test/test.dart';

//Instructions: Return the number (count) of vowels in the given string.

// We will consider a, e, i, o, u as vowels for this Kata (but not y).

// The input string will only consist of lower case letters and/or spaces.

//solution1
// int getCount(String str) {
//   var vowels = 'aeiou';
//   var num = 0;
//   List inStr = str.split('');
//   for (String i in inStr) {
//     if (vowels.contains(i)) {
//       num++;
//     }
//   }
//   return num;
// }

//solution2
int getCount(String str) => RegExp('[aeiou]').allMatches(str).length;

//test
void main() {
  test("Sample tests", () {
    expect(getCount("bcdfghjklmnpqrstvwxy"), equals(0));
    expect(getCount("abcde"), equals(2));
    expect(getCount("aeiou"), equals(5));
    expect(getCount("abracadabra"), equals(5));
  });
}
