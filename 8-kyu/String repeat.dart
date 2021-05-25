import 'package:test/test.dart';

//Instructions: Write a function called repeatStr which repeats the given string string exactly n times.

// repeatStr(6, "I") // "IIIIII"
// repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"
// repeatString(6, "I") // "IIIIII"
// repeatString(5, "Hello") // "HelloHelloHelloHelloHello"

//solution
String repeatString(int n, String s) => s * n;

//test
void main() {
  group('basic tests', () {
    test('Testing for 4 and "a"',
        () => expect(repeatString(4, "a"), equals("aaaa")));
    test('Testing for 3 and "hello "',
        () => expect(repeatString(3, "hello "), equals("hello hello hello ")));
    test('Testing for 2 and "abc"',
        () => expect(repeatString(2, "abc"), equals("abcabc")));
  });
}
