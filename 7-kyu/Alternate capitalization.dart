import 'package:test/test.dart';

//Instructions: Given a string, capitalize the letters that occupy even indexes and odd indexes separately, and return as shown below. Index 0 will be considered even.

// For example, capitalize("abcdef") = ['AbCdEf', 'aBcDeF']. See test cases for more examples.

// The input will be a lowercase string with no spaces.

//solution
List<String> capitalize(String x) {
  var result = ['', ''];

  for (var i = 0; i < x.length; i++) {
    if (i % 2 == 0) {
      result[0] += x[i].toUpperCase();
      result[1] += x[i].toLowerCase();
    } else {
      result[0] += x[i].toLowerCase();
      result[1] += x[i].toUpperCase();
    }
  }
  return result;
}

//test
void main() {
  group("Fixed tests", () {
    test("Testing for abcdef",
        () => expect(capitalize("abcdef"), equals(['AbCdEf', 'aBcDeF'])));
    test("Testing for codewars",
        () => expect(capitalize("codewars"), equals(['CoDeWaRs', 'cOdEwArS'])));
    test(
        "Testing for abracadabra",
        () => expect(
            capitalize("abracadabra"), equals(['AbRaCaDaBrA', 'aBrAcAdAbRa'])));
    test(
        "Testing for codewarriors",
        () => expect(capitalize("codewarriors"),
            equals(['CoDeWaRrIoRs', 'cOdEwArRiOrS'])));
    test(
        "Testing for indexinglessons",
        () => expect(capitalize("indexinglessons"),
            equals(['InDeXiNgLeSsOnS', 'iNdExInGlEsSoNs'])));
    test(
        "Testing for codingisafunactivity",
        () => expect(capitalize("codingisafunactivity"),
            equals(['CoDiNgIsAfUnAcTiViTy', 'cOdInGiSaFuNaCtIvItY'])));
  });
}
