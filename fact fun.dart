// import 'dart:io';

// void main() {
//   print('enter a number');
//   fun();
// }

// void fun() {
//   int fac = 1;
//   int a = int.parse(stdin.readLineSync()!);
//   for (int fac = 1; a <= fac; fac++) {
//     fac = fac * 1;
//   }
//   print('$fac:');
// }
import 'dart:io';

void main() {
  print('enter a number');
  fun();
}

void fun() {
  int i;
  print('input a number');
  int b = int.parse(stdin.readLineSync()!);
  for (i = 1; i <= b; i++) {
    i = i * b;
  }
  print('$i:');
}
