// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secondproject/my.dart';

void main() {
  runApp(const firstProject());
}

class firstProject extends StatelessWidget {
  const firstProject({super.key});

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
      'assets/Hassami.jpg',
      'assets/my.jpg'
    ];
    List price = [
      'price=2000',
      'price=3000',
      'price=4000',
      'price=5000',
      'price= 5000'
    ];
    List Brand = ['addidas', 'Gucci', 'outfitter', 'Gucci', 'Couger'];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 189, 163),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.arrow_back_ios_new_rounded),
              ),
              Text('Amazone Shopping Center'),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.menu),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: image.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 50,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1 / 1.2,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 400,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              '${image[index]}',
                              height: 200,
                              // width: 300,
                            ),
                            Text(('${price[index]}')),
                            Text('${Brand[index]}'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => firstProject_2()));
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          child: Center(child: Text('Buy now')),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  );
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
