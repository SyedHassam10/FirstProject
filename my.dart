// ignore_for_file: dead_code

import 'package:flutter/material.dart';

void main() {
  runApp(const firstProject_2());
}

class firstProject_2 extends StatelessWidget {
  const firstProject_2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Online shopping'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List image = [
      'assets/1.jpg',
      'assets/2.png',
      'assets/3.jpg',
      'assets/Hassami.jpg'
    ];
    List price = [
      'price=2000',
      'price=3000',
      'price=4000',
      'price=5000',
    ];
    List Brand = ['addidas', 'Gucci', 'outfitter', 'Gucci'];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 109, 182, 202),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 30,
                decoration: BoxDecoration(
                  color: Color.fromARGB(31, 249, 7, 7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.black,
                ),
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Amazone Shopping villa "),
                ),
              ),
              Container(
                height: 50,
                width: 30,
                decoration: BoxDecoration(
                  color: Color.fromARGB(31, 249, 7, 7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.menu,
                ),
              ),
            ],
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: image.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 224, 132, 240)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            '${image[index]}',
                            height: 300,
                            width: 300,
                          ),
                          Text('${price[index]}'),
                          Text('${Brand[index]}'),
                        ],
                      ),
                    );
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red),
                      child: GestureDetector(
                        onTap: () {
                          Text('${Brand[index]}');
                        },
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}

class SecondPageClass extends StatelessWidget {
  const SecondPageClass({
    super.key,
    required this.image,
    required this.price,
    required this.Brand,
  });

  final List image;
  final List price;
  final List Brand;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            itemCount: image.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1),
            itemBuilder: (context, index) {
              return Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 224, 132, 240)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      '${image[index]}',
                      height: 300,
                      width: 300,
                    ),
                    Text('${price[index]}'),
                    Text('${Brand[index]}'),
                  ],
                ),
              );
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => firstProject_2()));
                  },
                ),
              );
            }));
  }
}
