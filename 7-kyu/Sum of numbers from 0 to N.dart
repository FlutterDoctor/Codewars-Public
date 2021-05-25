import 'package:test/test.dart';

//Instructions: Description:

// We want to generate a function that computes the series starting from 0 and ending until the given number.

// Example:
// Input:

// > 6
// Output:

// 0+1+2+3+4+5+6 = 21

// Input:

// > -15
// Output:

// -15<0

// Input:

// > 0
// Output:

// 0=0

//solution1
// class SequenceSum{static String showSequence(num n){
//  var ttl = 0;
//     var result ="0";
//   if( n == 0) return "0=0";
//    if(n< 0) return "$n<0";
//   else

//      for(var i = 1; i<=n; i++){
//       result += "+${i}";
//       ttl += i;
//      }
//   return result + " = $ttl";
//   }
// }

//solution2
class SequenceSum {
  static String showSequence(num n) {
    if (n <= 0) return n < 0 ? '$n<0' : '0=0';
    return List<int>.generate(n + 1, (i) => i).join('+') +
        ' = ' +
        ((n + 1) * n / 2).floor().toString();
  }
}

//test
void main() {
  test('Basic tests', () {
    expect(SequenceSum.showSequence(0), equals("0=0"));
    expect(SequenceSum.showSequence(6), equals("0+1+2+3+4+5+6 = 21"));
  });
}
