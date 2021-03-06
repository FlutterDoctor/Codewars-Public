import 'package:test/test.dart';

//Instructions:
// Task
// King Arthur and his knights are having a New Years party. Last year Lancelot was jealous of Arthur, because Arthur had a date and Lancelot did not, and they started a duel.

// To prevent this from happening again, Arthur wants to make sure that there are at least as many women as men at this year's party. He gave you a list of integers of all the party goers.

// Arthur needs you to return true if he needs to invite more women or false if he is all set.

// Input/Output
// [input] integer array L ($a in PHP)
// An array (guaranteed non-associative in PHP) representing the genders of the attendees, where -1 represents women and 1 represents men.

// 2 <= L.length <= 50

// [output] a boolean value

// true if Arthur need to invite more women, false otherwise.

//solution
bool inviteMoreWomen(List<int> l) {
  var women = 0;
  var men = 0;

  for (var i = 0; i < l.length; i++) {
    if (l[i].isNegative) {
      women++;
    } else {
      men++;
    }
  }
  return women >= men ? false : true;
}

//test
void main() {
  group('Basic tests', () {
    test("Testing for [1, -1, 1]",
        () => expect(inviteMoreWomen([1, -1, 1]), equals(true)));
    test("Testing for [-1, -1, -1]",
        () => expect(inviteMoreWomen([-1, -1, -1]), equals(false)));
    test("Testing for [1, -1]",
        () => expect(inviteMoreWomen([1, -1]), equals(false)));
    test("Testing for [1, 1, 1]",
        () => expect(inviteMoreWomen([1, 1, 1]), equals(true)));
  });
}
