import 'dart:math';

import 'package:test/test.dart';

//Instructions: The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only (both vowels and consonants) and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

//solution
int solve(String s) => RegExp(r'([aeiou]+)')
    .allMatches(s)
    .map((x) => x.group(0).length)
    .reduce(max);

//test
void main() {
  group("Fixed tests", () {
    test("Testing for codewarriors",
        () => expect(solve("codewarriors"), equals(2)));
    test("Testing for suoidea", () => expect(solve("suoidea"), equals(3)));
    test("Testing for ultrarevolutionariees",
        () => expect(solve("ultrarevolutionariees"), equals(3)));
    test("Testing for strengthlessnesses",
        () => expect(solve("strengthlessnesses"), equals(1)));
    test("Testing for cuboideonavicuare",
        () => expect(solve("cuboideonavicuare"), equals(2)));
    test("Testing for chrononhotonthuooaos",
        () => expect(solve("chrononhotonthuooaos"), equals(5)));
    test("Testing for iiihoovaeaaaoougjyaw",
        () => expect(solve("iiihoovaeaaaoougjyaw"), equals(8)));
  });
}
