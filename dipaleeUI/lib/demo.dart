import 'package:flutter/material.dart';

class demo extends StatelessWidget {
  const demo ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body:Text("dipalee",style: TextStyle(color: Colors.redAccent,fontSize: 50)),
      appBar: AppBar(title:Text("welcome to my first UI lab"),backgroundColor: Colors.amberAccent,titleTextStyle: TextStyle(backgroundColor: Colors.tealAccent),) ,
    );
  }
}