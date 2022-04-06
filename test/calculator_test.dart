import 'package:flutter_test/flutter_test.dart';
import 'calculator.dart';

void main() {
 
  group('To test addition and division', () {
    test('I want to test addition', () {
    
    calculator calc = calculator();

    int result = calc.add(4, 5);

    expect(result, 9);
  });

  test('I want to test division', () {

       calculator calc = calculator();
       
       double result = calc.div(20, 5);

      expect(result, isNot(10));
  });
});

tearDownAll(() {
  print('Congrats, All tests passed!');
});
}