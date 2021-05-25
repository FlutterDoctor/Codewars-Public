import 'package:test/test.dart';

//Instructions: Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

// Examples input/output:

// XO("ooxx") => true
// XO("xooxx") => false
// XO("ooxXm") => true
// XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
// XO("zzoo") => false

//solution
bool XO(str) {
  var xx = 'x,X';
  var oo = 'o,O';
  var xs = 1;
  var os = 1;
  List inStr = str.split('');
  for (String i in inStr) {
    if (xx.contains(i)) {
      xs++;
    }
  }
  for (String i in inStr) {
    if (oo.contains(i)) {
      os++;
    }
  }
  if (xs == os) {
    return true;
  } else if (xs == 0 && os == 0) {
    return true;
  } else {
    return false;
  }
}

//test
void main() {
  group('Fixed tests', () {
    test("Testing for xo", () {
      expect(XO('xo'), equals(true));
    });
    test("Testing for XO", () {
      expect(XO('XO'), equals(true));
    });
    test("Testing for xo0", () {
      expect(XO('xo0'), equals(true));
    });
    test("Testing for xxxoo", () {
      expect(XO('xxxoo'), equals(false));
    });
    test("Testing for xxOo", () {
      expect(XO("xxOo"), equals(true));
    });
    test("Testing for empty string", () {
      expect(XO(''), equals(true));
    });
    test("Testing for xxxxxoooxooo", () {
      expect(XO('xxxxxoooxooo'), equals(true));
    });
    test("Testing for xxxm", () {
      expect(XO("xxxm"), equals(false));
    });
    test("Testing for ooom", () {
      expect(XO("ooom"), equals(false));
    });
    test("Testing for Oo", () {
      expect(XO("Oo"), equals(false));
    });
    test("Testing for abcdefghijklmnopqrstuvwxyz", () {
      expect(XO('abcdefghijklmnopqrstuvwxyz'), equals(true));
    });
  });
}
