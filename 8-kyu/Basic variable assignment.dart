import 'package:test/test.dart';

//Instructions: This code should store "codewa.rs" as a variable called name but it's not working. Can you figure out why?

//solution
var a = 'code';
var b = "wa.rs";
var name = a + b;

//test
void main() {
  test('Test', () {
    expect(name, equals('codewa.rs'));
  });
}
