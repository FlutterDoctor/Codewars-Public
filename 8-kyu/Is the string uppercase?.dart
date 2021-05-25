import 'package:test/test.dart';

//Instructions: Is the string uppercase?
// Task
// isUpperCase("c") == false
// isUpperCase("C") == true
// isUpperCase("hello I AM DONALD") == false
// isUpperCase("HELLO I AM DONALD") == true
// isUpperCase("ACSKLDFJSgSKLDFJSKLDFJ") == false
// isUpperCase("ACSKLDFJSGSKLDFJSKLDFJ") == true
// In this Kata, a string is said to be in ALL CAPS whenever it does not contain any lowercase letter so any string containing no letters at all is trivially considered to be in ALL CAPS.

//solution
bool isUpperCase(String str) => str.toUpperCase() == str;

//test
void main() {
  group("Fixed tests", () {
    test("Testing for c", () => expect(isUpperCase('c'), equals(false)));
    test("Testing for C", () => expect(isUpperCase('C'), equals(true)));
    test("Testing for hello I AM DONALD",
        () => expect(isUpperCase('hello I AM DONALD'), equals(false)));
    test("Testing for HELLO I AM DONALD",
        () => expect(isUpperCase('HELLO I AM DONALD'), equals(true)));
    test("Testing for ACSKLDFJSgSKLDFJSKLDFJ",
        () => expect(isUpperCase('ACSKLDFJSgSKLDFJSKLDFJ'), equals(false)));
    test("Testing for ACSKLDFJSGSKLDFJSKLDFJ",
        () => expect(isUpperCase('ACSKLDFJSGSKLDFJSKLDFJ'), equals(true)));
  });
}
