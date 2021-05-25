import 'package:test/test.dart';

//Instructions: In this Kata, you will be given a string that may have mixed uppercase and lowercase letters and your task is to convert that string to either lowercase only or uppercase only based on:

// make as few changes as possible.
// if the string contains equal number of uppercase and lowercase letters, convert the string to lowercase.
// For example:

// solve("coDe") = "code". Lowercase characters > uppercase. Change only the "D" to lowercase.
// solve("CODe") = "CODE". Uppercase characters > lowecase. Change only the "e" to uppercase.
// solve("coDE") = "code". Upper == lowercase. Change all to lowercase.

//solution
String solve(String s) {
  int upr = 0;
  int lwr = 0;
  String loop = '';
  for (int i = 0; i < s.length; i++) {
    loop = s[i];
    if (loop == loop.toUpperCase()) {
      upr += 1;
    } else {
      lwr += 1;
    }
  }
  if (upr == lwr) {
    return s.toLowerCase();
  }
  if (upr > lwr) {
    return s.toUpperCase();
  } else {
    return s.toLowerCase();
  }
}

//test
void main() {
  group("Basic tests", () {
    test("Testing for code", () => expect(solve("code"), equals("code")));
    test("Testing for CODe", () => expect(solve("CODe"), equals("CODE")));
    test("Testing for COde", () => expect(solve("COde"), equals("code")));
    test("Testing for Code", () => expect(solve("Code"), equals("code")));
  });
}
