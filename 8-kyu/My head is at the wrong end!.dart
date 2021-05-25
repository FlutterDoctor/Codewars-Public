import 'package:test/test.dart';

//Instructions: You're at the zoo... all the meerkats look weird. Something has gone terribly wrong - someone has gone and switched their heads and tails around!

// Save the animals by switching them back. You will be given an array which will have three values (tail, body, head). It is your job to re-arrange the array so that the animal is the right way round (head, body, tail).

// Same goes for all the other arrays/lists that you will get in the tests: you have to change the element positions with the same exact logics

//solution
List<String> fixTheMeerkat(List<String> arr) => arr.reversed.toList();

//test
void testing(List<String> arr, List<String> exp) => test(
    "Testing for ${arr.map((x) => "\"$x\"").toList()}",
    () => expect(fixTheMeerkat(arr), equals(exp)));
void main() {
  group('Basic tests', () {
    testing(["tail", "body", "head"], ["head", "body", "tail"]);
    testing(["tails", "body", "heads"], ["heads", "body", "tails"]);
    testing(["bottom", "middle", "top"], ["top", "middle", "bottom"]);
    testing(["lower legs", "torso", "upper legs"],
        ["upper legs", "torso", "lower legs"]);
    testing(["ground", "rainbow", "sky"], ["sky", "rainbow", "ground"]);
  });
}
