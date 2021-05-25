import 'package:test/test.dart';

//Instructions: For every good kata idea there seem to be quite a few bad ones!

// In this kata you need to check the provided array (x) for good ideas 'good' and bad ideas 'bad'. If there are one or two good ideas, return 'Publish!', if there are more than 2 return 'I smell a series!'. If there are no good ideas, as is often the case, return 'Fail!'.

//solution
String well(List<String> x) {
  var n = x.where((x) => x == 'good').length;
  return n > 2
      ? 'I smell a series!'
      : n > 0
          ? 'Publish!'
          : 'Fail!';
}

//test
void main() {
  group('basic tests', () {
    test("Testing for ['bad', 'bad', 'bad']",
        () => expect(well(['bad', 'bad', 'bad']), equals('Fail!')));
    test(
        "Testing for ['good', 'bad', 'bad', 'bad', 'bad']",
        () => expect(
            well(['good', 'bad', 'bad', 'bad', 'bad']), equals('Publish!')));
    test(
        "Testing for ['good', 'bad', 'bad', 'bad', 'bad', 'good', 'bad', 'bad', 'good']",
        () => expect(
            well([
              'good',
              'bad',
              'bad',
              'bad',
              'bad',
              'good',
              'bad',
              'bad',
              'good'
            ]),
            equals('I smell a series!')));
  });
}
