import 'package:flutter/material.dart';

class Respo extends StatelessWidget {
  const Respo({super.key});

  @override
 
  Widget build(BuildContext context) {
     double widthofscreen=MediaQuery.of(context).size.width;

     double hightofscreen=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
          height:hightofscreen*.37,
          width: widthofscreen*.2,
          color: Colors.red,
        ),
           Container(
          height:hightofscreen*.37,
          width: widthofscreen*.2,
          color: Colors.green,
        ),
           Container(
          height:hightofscreen*.37,
          width: widthofscreen*.2,
          color: Colors.yellow,
        ),
          Container(
          height:hightofscreen*.37,
          width: widthofscreen*.2,
          color: Colors.amber,
          child: Text('${hightofscreen*.37}'),
        ),
          Container(
          height:hightofscreen*.37,
          width: widthofscreen*.2,
          color: Colors.black,
        ),
        ],)


      ],),
    );
  }
}