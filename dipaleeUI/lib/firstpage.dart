import 'package:dipaleeui/second.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("go to the second page"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return Second();
                },
              ),
            );
          },
        ), 
      ),
    );
  }
}
