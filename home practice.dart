// import 'dart:io';

// // void main() {
// // var num = [
// //   10,
// //   21,
// //   22,
// //   23,
// //   32,
// // ];
// // print(num);
// // //new value put kolo dapara (listname.insert(kam number,kama value))use kigi
// // num.insert(1, 15);
// // print(num);
// // //value remove kolo dapara
// // num.remove(23);
// // print(num);
// // num.insert(1, 11);
// // print(num);
// // num.insert(2, 12);
// // print(num);
// // num.remove(22);
// // num.add(33);
// // num.insert(3, 13);
// // print(num);
// // // da tool add kolo dapara ba first empty 'list' jor ki nu bya ba add kigi
// // var name = [];
// // name.add('hassam');
// // name.add('izhar');
// // name.addAll(num);
// // print("$name");
// // name[1] = 10;
// // print("$name");
// // name[2] = "izhar";
// // print("$name");
// // name[4] = "abu";
// // print("$name");
// // name[5] = 12;
// // print("$name");

// // }
// void main() {
//   print('this is function');

//   Myfun("hassam", 20);

//   Myfun("izhar", 30);

//   print(Add(3, 6));
//   print(Add(20, 10));
// }

// void Myfun(int, string) {
//   print('$int');
//   print('$string');
// }

// int Add(int no1, int no2) {
//   int mul = no1 * no2;
//   int sum = no1 + no2;

//   print('$mul:');
//   print('$sum:');

//   // return sum;
// }

//calculator program starts from here
import 'dart:io';

void main() {
  print('this is the calulator');
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  double c = calc(a, b);
  print(c);
}

double calc(double a, double b) {
  print('for addtion press 1');
  print('for subtraction press 2');
  print('for multilication press 3');
  print('for divsion press 4');

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
