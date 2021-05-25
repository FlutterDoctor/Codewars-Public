import 'package:test/test.dart';

//Instructions: Complete the solution so that it reverses the string passed into it.
// 'world'  =>  'dlrow'

//solution
String solution(str) => str.split('').reversed.join('');

//test
void main() {
  test('reversed world', () {
    expect(solution('world'), equals('dlrow'));
  });

  test('hello reversed', () {
    expect(solution('hello'), equals('olleh'));
  });

  test('reversed ', () {
    expect(solution(''), equals(''));
  });

  test('reversed h', () {
    expect(solution('h'), equals('h'));
  });
}
