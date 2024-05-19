import 'dart:io';

void main() {
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  double c = calc(a, b);
  print(c);
}

double calc(double a, double b) {
  print("press 1 for addition");
  print("press 2 for subtratction");
  print("press 3 for multiplication");
  print("press 4 for division");

  int choice = int.parse(stdin.readLineSync()!);
  if (choice == 1) {
    return a + b;
  }
  if (choice == 2) {
    return a - b;
  }
  if (choice == 3) {
    return a * b;
  }
  if (choice == 4) {
    return a / b;
  } else {
    return 0;
  }
}
