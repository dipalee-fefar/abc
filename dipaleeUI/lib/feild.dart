import 'package:flutter/material.dart';

class DiffProperty extends StatelessWidget {
  const DiffProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "hello dipalee",
            style: TextStyle(fontSize: 50),
          ),
          Padding(padding: EdgeInsets.all(50)),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              hintText: "Enter Your Name",
              label:Text("Name"),
            ),
            onChanged: (value) => print(value),
          )
        ],
      ),

    );
  }
}
