import 'package:test/test.dart';

//Instructions: Write a function named setAlarm which receives two parameters. The first parameter, employed, is true whenever you are employed and the second parameter, vacation is true whenever you are on vacation.

// The function should return true if you are employed and not on vacation (because these are the circumstances under which you need to set an alarm). It should return false otherwise. Examples:

// setAlarm(true, true) -> false
// setAlarm(false, true) -> false
// setAlarm(false, false) -> false
// setAlarm(true, false) -> true

//solution
bool setAlarm(bool e, bool v) {
  if (e == true && v == true) {
    return false;
  } else if (e == false && v == false) {
    return false;
  } else if (e == true && v == false) {
    return true;
  } else if (v == true && e == false) {
    return false;
  }
}

//test
void main() {
  group("basic tests", () {
    test("setAlarm(true, true)",
        () => expect(setAlarm(true, true), equals(false)));
    test("setAlarm(false, true)",
        () => expect(setAlarm(false, true), equals(false)));
    test("setAlarm(true, false)",
        () => expect(setAlarm(true, false), equals(true)));
    test("setAlarm(false, false)",
        () => expect(setAlarm(false, false), equals(false)));
  });
}
