import 'dart:io';

void main(List<String> args) {
  print('Enter First number:');
  double n1 = double.parse(stdin.readLineSync()!);

  print('Enter Second number:');
  double n2 = double.parse(stdin.readLineSync()!);
  print(
      'Enter Operator: \n1. Addition\n2. Subtraction\n3.Multiplication\n4. Division');
  int op = int.parse(stdin.readLineSync()!);
  switch (op) {
    case 1:
      print(add(n1, n2));
      break;
    case 2:
      print(sub(n1, n2));
      break;
    case 3:
      print(mult(n1, n2));
      break;
    case 4:
      print(divi(n1, n2));
      break;
    default:
      print("Wrong input:\nGood Bye!!! ");
  }
}

double add(num1, num2) {
  double addition = num1 + num2;
  return addition;
}

double sub(num1, num2) {
  double subtraction = num1 - num2;
  return subtraction;
}

double mult(num1, num2) {
  double multiplication = num1 * num2;
  return multiplication;
}

double divi(num1, num2) {
  double division = num1 / num2;
  return division;
}
