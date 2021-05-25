import 'package:test/test.dart';

//Instructions: Create a function (or write a script in Shell) that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

//solution
String evenOrOdd(int number) => number.isEven ? 'Even' : 'Odd';

//test
void main() {
  test('Basic tests', () {
    expect(evenOrOdd(2), equals('Even'));
    expect(evenOrOdd(1), equals('Odd'));
    expect(evenOrOdd(0), equals('Even'));
    expect(evenOrOdd(7), equals('Odd'));
    expect(evenOrOdd(-1), equals('Odd'));
  });
}
