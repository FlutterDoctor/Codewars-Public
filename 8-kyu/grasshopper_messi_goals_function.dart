import 'package:test/test.dart';

//Instructions: Messi is a soccer player with goals in three leagues:
// LaLiga
// Copa del Rey
// Champions
// Complete the function to return his total number of goals in all three leagues.
// Note: the input will always be valid.
// For example:
// 5, 10, 2  -->  17

//solution
int goals(int laLigaGoals, int copaDelReyGoals, int championsLeagueGoals) {
  return laLigaGoals + copaDelReyGoals + championsLeagueGoals;
}

//test
void main() {
  group("Fixed tests", () {
    test("goals(0, 0, 0)", () => expect(goals(0, 0, 0), equals(0)));
    test("goals(43, 10, 5)", () => expect(goals(43, 10, 5), equals(58)));
  });
}
