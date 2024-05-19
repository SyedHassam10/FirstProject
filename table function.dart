void main() {
  print('enter a value');
  print(Add(2, 4));
  print(Add(4, 2));
}

// void fun() {
// int b = int.parse(stdin.readLineSync()!);
// for (int i = 1; i <= 10; i++) {
//   print('this is table $i * $b ${i * b}');

// print('enter a num');
// }

// }
int Add(int no1, int no2) {
  int sum = no1 + no2;
  int sub = no1 - no2;
  print('$sum');
  print('$sub');

  return sum;
}
