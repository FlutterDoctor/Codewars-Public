import 'package:test/test.dart';

//Instructions:
// The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.

// Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

// The following are examples of expected output values:

// rgb(255, 255, 255) // returns FFFFFF
// rgb(255, 255, 300) // returns FFFFFF
// rgb(0, 0, 0)       // returns 000000
// rgb(148, 0, 211)   // returns 9400D3

//solution
String rgb(int r, int g, int b) {
  String convert(int n) {
    if (n > 255) n = 255;
    if (n < 0) n = 0;
    return n.toRadixString(16).toUpperCase().padLeft(2, '0');
  }

  return [r, g, b].map((e) => convert(e)).join();
}

//test
void main() {
  test('Basic tests', () {
    expect(rgb(255, 255, 255), equals('FFFFFF'));
    expect(rgb(255, 255, 300), equals('FFFFFF'));
    expect(rgb(0, 0, 0), equals('000000'));
    expect(rgb(148, 0, 211), equals('9400D3'));
    expect(rgb(148, -20, 211), equals('9400D3'));
    expect(rgb(144, 195, 212), equals('90C3D4'));
    expect(rgb(212, 53, 12), equals('D4350C'));
  });
}
