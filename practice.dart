// import 'dart:io';
// this the factorial program
// void main() {
//   int fact = 1;
//   int b = int.parse(stdin.readLineSync()!);
//   for (int fact = 1; b > fact; fact++);
//   {
//     fact = fact * 1;
//     print('this the value of fact');
//   }
// }
//list simple first program

// void main() {
//   List<int> num = [1, 2, 2];
//   List<String> name = ['Has', 'Bas', 'Mas'];
//   print(num);
//   print(name);
// }

// void main() {
//   List<double> name = [];
//   name.add(1);
//   name.add(2);
//   print('$name');
// }
//the start of list program here
// void main() {
//   List<String> fruit = [
//     'apple',
//     'banana',
//   ];
//   print('fruit');
//   fruit.add('mixed');
//   print(fruit.isEmpty);
//   print(fruit.first);
//   print(fruit.isNotEmpty);
//   print(fruit.reversed);
//   fruit.addAll(['mango', 'guava']);//adding more string here
//   print(fruit);
//   print(fruit[0]);//value access using index num
//   print(fruit[1]);
//   fruit.add("hasam");
//   fruit.add("has");
//   print(fruit);
// }
// void main() {
//   print('this is the removing value for the list ');
//   List<int> num = [
//     1,
//     2,
//     3,
//     4,
//     5,
//     6,
//     78,
//   ];
//   print('num');
//   num.remove(4);
//   print(num);
// }
// void main() {
//   print('this the task which takes input from the user');
//   int a = int.parse(stdin.readLineSync()!);
//   List<int> num = [];
//   for (int i = 0; i <= a; i++) {
//     num.add(int.parse(stdin.readLineSync()!));
//   }
//   for (int j = 0; j < num.length; j++) {
//     if (num[j] % 2 == 0) {
//       print('this is even number ${num}'[j]);
//     } else {
//       print('this the odd number');
//     }
//   }
// }
// void main() {
//   int sum;
//   List<int> num = [12, 13, 15, 16];
//   sum = 0;
//   for (int i = 0; i < num.length; i++) {
//     sum += num[i];
//     print('this is the sum $sum ');
//   }

// }

import "dart:io";

void main() {
  int sum;

  List<int> num = [];
  print('Enter length of list:');
  int len = int.parse(stdin.readLineSync()!);
  for (int j = 0; j < len; j++) {
    num.add(int.parse(stdin.readLineSync()!));
  }
  sum = 0;

  for (int i = 0; i < 4; i++) {
    sum += num[i];
  }
  print(sum);
}
