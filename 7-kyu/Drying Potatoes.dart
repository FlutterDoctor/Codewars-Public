import 'package:test/test.dart';

//Instructions: All we eat is water and dry matter.

// John bought potatoes: their weight is 100 kilograms. Potatoes contain water and dry matter.

// The water content is 99 percent of the total weight. He thinks they are too wet and puts them in an oven - at low temperature - for them to lose some water.

// At the output the water content is only 98%.

// What is the total weight in kilograms (water content plus dry matter) coming out of the oven?

// He finds 50 kilograms and he thinks he made a mistake: "So much weight lost for such a small change in water content!"

// Can you help him?

// Write function potatoes with

// int parameter p0 - initial percent of water-
// int parameter w0 - initial weight -
// int parameter p1 - final percent of water -
// potatoesshould return the final weight coming out of the oven w1 truncated as an int.

// Example:
// potatoes(99, 100, 98) --> 50

//solution
int potatoes(int p0, int w, int p1) => (w * (100 - p0) ~/ (100 - p1));

//test
void main() {
  group("basic tests", () {
    test("potatoes(82, 127, 80)",
        () => expect(potatoes(82, 127, 80), equals(114)));
    test("potatoes(93, 129, 91)",
        () => expect(potatoes(93, 129, 91), equals(100)));
    test("potatoes(82, 134, 77)",
        () => expect(potatoes(82, 134, 77), equals(104)));
    test("potatoes(90, 194, 87)",
        () => expect(potatoes(90, 194, 87), equals(149)));
    test("potatoes(82, 173, 77)",
        () => expect(potatoes(82, 173, 77), equals(135)));
    test("potatoes(77, 227, 74)",
        () => expect(potatoes(77, 227, 74), equals(200)));
    test(
        "potatoes(76, 64, 75)", () => expect(potatoes(76, 64, 75), equals(61)));
    test("potatoes(81, 120, 79)",
        () => expect(potatoes(81, 120, 79), equals(108)));
    test(
        "potatoes(84, 65, 80)", () => expect(potatoes(84, 65, 80), equals(52)));
    test(
        "potatoes(93, 69, 89)", () => expect(potatoes(93, 69, 89), equals(43)));
    test("potatoes(78, 121, 75)",
        () => expect(potatoes(78, 121, 75), equals(106)));
    test("potatoes(83, 185, 79)",
        () => expect(potatoes(83, 185, 79), equals(149)));
    test(
        "potatoes(78, 57, 76)", () => expect(potatoes(78, 57, 76), equals(52)));
    test("potatoes(79, 132, 78)",
        () => expect(potatoes(79, 132, 78), equals(126)));
    test("potatoes(86, 195, 84)",
        () => expect(potatoes(86, 195, 84), equals(170)));
    test(
        "potatoes(75, 96, 70)", () => expect(potatoes(75, 96, 70), equals(80)));
    test("potatoes(81, 150, 77)",
        () => expect(potatoes(81, 150, 77), equals(123)));
    test(
        "potatoes(82, 57, 81)", () => expect(potatoes(82, 57, 81), equals(54)));
    test(
        "potatoes(85, 58, 83)", () => expect(potatoes(85, 58, 83), equals(51)));
    test("potatoes(78, 173, 77)",
        () => expect(potatoes(78, 173, 77), equals(165)));
  });
}
