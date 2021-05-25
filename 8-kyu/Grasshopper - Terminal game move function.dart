import 'package:test/test.dart';

//Instructions: Terminal game move function
// In this game, the hero moves from left to right. The player rolls the die and moves the number of spaces indicated by the die two times.

// Create a function for the terminal game that takes the current position of the hero and the roll (1-6) and return the new position.

// Example:
// move(3, 6) should equal 15

//solution
int move(int pos, int roll) => (roll * 2 + pos).abs();

//test
void main() {
  group("Fixed tests", () {
    test("move(0, 4)", () => expect(move(0, 4), equals(8)));
    test("move(3, 6)", () => expect(move(3, 6), equals(15)));
    test("move(2, 5)", () => expect(move(2, 5), equals(12)));
  });
}
