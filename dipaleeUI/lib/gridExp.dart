import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  List<int> number = List.generate(100, (index) => index+1);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView.builder(
          // scrollDirection: Axis.vertical,
           itemCount: number.length,
           itemBuilder:(context,index){
            return Container(
              // width: 60,
              child: Card(
                color: Colors.tealAccent,
                child: Center(
                  child: Text(
                    number[index].toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            );
           }),
    );
  }
}
