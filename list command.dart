void main() {
  List<String> fruit = [
    'apple',
    'banana',
  ];
  print('fruit');
  fruit.add('mixed');
  print(fruit.isEmpty);
  print(fruit.first);
  print(fruit.isNotEmpty);
  print(fruit.reversed);
  fruit.addAll(['mango', 'guava']); //adding more string here
  print(fruit);
  print(fruit[0]); //value access using index num
  print(fruit[1]);
  fruit.add("hasam");
  fruit.add("has");
  print(fruit);
}
