import 'package:test/test.dart';

//Instructions: Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.

//solution
String bool_to_word(bool boolean) {
  if (boolean == true) {
    return 'Yes';
  } else if (boolean == false) {
    return 'No';
  }
}

//test
void main() {
  test('Tests', () {
    expect(bool_to_word(true), equals("Yes"));
    expect(bool_to_word(false), equals("No"));
  });
}
