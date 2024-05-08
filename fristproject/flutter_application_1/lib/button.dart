import 'package:flutter/material.dart';
import 'package:flutter_application_1/nevigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 181, 186, 186),
        body: Column(children: [
          Icon(Icons.arrow_back),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 500),
            child: Text("Let's Get Start", style: TextStyle(fontSize: 50)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 500, top: 30),
            child: Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 206, 135, 135),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.amber)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Continue With Facebook'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 500, top: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => navigator()),
                );
              },
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 206, 136, 135),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.amber)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.g_mobiledata,
                      color: Color.fromARGB(255, 49, 62, 164),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text('Continue With Google'),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 500, top: 30),
            child: Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 206, 136, 135),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.amber)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.apple,
                    color: Color.fromARGB(255, 49, 62, 164),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Continue With IOS'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 500, top: 30),
            child: Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.amber)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 49, 62, 164),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text('continue wit email'),
                ],
              ),
            ),
          ),
        ]));
  }
}
