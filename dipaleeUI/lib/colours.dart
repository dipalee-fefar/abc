import 'package:flutter/material.dart';

class Colours extends StatelessWidget {
  const Colours({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Column(
          children: [
            Expanded(child: Row(
              children: [
                Expanded(child: Column(
                  children: [
                    box(Colors.green)
                  ],
                ))
              ],
            )),
            Expanded(child: Row(
              children: [
                box(Colors.yellow)
              ],
            )),
            Expanded(child: Row(
              children: [
                box(Colors.tealAccent)
              ],
            )),
            Expanded(child: Row(
              children: [
                box(Colors.deepOrange)
              ],
            )),
            Expanded(child: Row(
              children: [
                box(Colors.purpleAccent)
              ],
            ))
          ]
        ),
    );
  }
  Widget box(Color Mycolor,{int flex = 1}){
    return Expanded(
      flex: flex,
      child: Container(
        color: Mycolor,
      ),
    );
  }
}
