import 'package:test/test.dart';

//Instructions:
// My friend John likes to go to the cinema. He can choose between system A and system B.

// System A : he buys a ticket (15 dollars) every time
// System B : he buys a card (500 dollars) and a first ticket for 0.90 times the ticket price,
// then for each additional ticket he pays 0.90 times the price paid for the previous ticket.
// Example:
// If John goes to the cinema 3 times:

// System A : 15 * 3 = 45
// System B : 500 + 15 * 0.90 + (15 * 0.90) * 0.90 + (15 * 0.90 * 0.90) * 0.90 ( = 536.5849999999999, no rounding for each ticket)
// John wants to know how many times he must go to the cinema so that the final result of System B, when rounded up to the next dollar, will be cheaper than System A.

// The function movie has 3 parameters: card (price of the card), ticket (normal price of a ticket), perc (fraction of what he paid for the previous ticket) and returns the first n such that

// ceil(price of System B) < price of System A.
// More examples:

// movie(500, 15, 0.9) should return 43
//     (with card the total price is 634, with tickets 645)
// movie(100, 10, 0.95) should return 24
//     (with card the total price is 235, with tickets 240)

//solution
import 'dart:math';

int movie(int card, int ticket, double perc) {
  var result = 0;
  double a = 0;
  double b = card.toDouble();
  while (b.ceil() >= a) {
    a += ticket;
    b += ticket * pow(perc, ++result);
  }
  return result.ceil();
}

//test
void main() {
  group('Basic tests', () {
    test("movie(500, 15, 0.9)", () => expect(movie(500, 15, 0.9), equals(43)));
    test(
        "movie(100, 10, 0.95)", () => expect(movie(100, 10, 0.95), equals(24)));
    test("movie(0, 10, 0.95)", () => expect(movie(0, 10, 0.95), equals(2)));
    test("movie(250, 20, 0.9)", () => expect(movie(250, 20, 0.9), equals(21)));
    test("movie(500, 20, 0.9)", () => expect(movie(500, 20, 0.9), equals(34)));
    test("movie(2500, 20, 0.9)",
        () => expect(movie(2500, 20, 0.9), equals(135)));
  });
}
