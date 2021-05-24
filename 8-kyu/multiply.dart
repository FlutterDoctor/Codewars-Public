import 'package:test/test.dart';

//Instructions: This code does not execute properly. Try to figure out why.

//solution
int multiply(int a, int b) => a * b;

//test
void main() {
  test('Multiply should return the product', () {
    expect(multiply(8, 2), equals(16));
  });
}
