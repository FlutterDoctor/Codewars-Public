import 'package:test/test.dart';

//Instructions: Nathan loves cycling.
// Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling.
// You get given the time in hours and you need to return the number of litres Nathan will drink, rounded to the smallest value.
// For example:
// time = 3 ----> litres = 1
// time = 6.7---> litres = 3
// time = 11.8--> litres = 5

//solution
int litres(num time) {
  var timeSlot = time.floor();
  var div = timeSlot * 0.5;
  return div.floor();
}

//test
void main() {
  group('Basic tests', () {
    test("Testing for 2", () => expect(litres(2), equals(1)));
    test("Testing for 1.4", () => expect(litres(1.4), equals(0)));
    test("Testing for 12.3", () => expect(litres(12.3), equals(6)));
    test("Testing for 0.82", () => expect(litres(0.82), equals(0)));
    test("Testing for 11.8", () => expect(litres(11.8), equals(5)));
    test("Testing for 1787", () => expect(litres(1787), equals(893)));
    test("Testing for 0", () => expect(litres(0), equals(0)));
  });
}
