import 'package:test/test.dart';

//Instructions: Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters - each taken only once - coming from s1 or s2.

// Examples:
// a = "xyaabbbccccdefww"
// b = "xxxxyyyyabklmopq"
// longest(a, b) -> "abcdefklmopqwxy"

// a = "abcdefghijklmnopqrstuvwxyz"
// longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"

//solution
String longest(String a, String b) {
  var letters = (a + b).split('');
  letters.sort();

  return letters.toSet().join();
}

//test
void main() {
  void testing(String a, String b, String exp) {
    test("longest('$a', '$b')", () => expect(longest(a, b), equals(exp)));
  }

  group("Fixed tests", () {
    testing("aretheyhere", "yestheyarehere", "aehrsty");
    testing("loopingisfunbutdangerous", "lessdangerousthancoding",
        "abcdefghilnoprstu");
    testing("inmanylanguages", "theresapairoffunctions", "acefghilmnoprstuy");
    testing("lordsofthefallen", "gamekult", "adefghklmnorstu");
    testing("codewars", "codewars", "acdeorsw");
    testing(
        "agenerationmustconfrontthelooming", "codewarrs", "acdefghilmnorstuw");
  });
}
