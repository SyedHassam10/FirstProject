import 'package:flutter/material.dart';

class navigator extends StatelessWidget {
  const navigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("improve your skill more"),
          ],
        ),
      ),
    );
  }
}
