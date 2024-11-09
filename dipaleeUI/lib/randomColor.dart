import 'package:flutter/material.dart';

class RandomColor extends StatelessWidget {
  const RandomColor({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
         Expanded(
             child: Row(
                children: [
                  box(Colors.black87 , flex: 2),
                  Expanded(child: Column(
                    children: [
                      box(Colors.pink),
                      box(Colors.brown)
                    ],
                  )),
                  Expanded(child: Column(
                    children: [
                      box(Colors.green),
                      box(Colors.blueGrey)
                    ],
                  ))
                ],
         )),
          Expanded(
              child: Row(
                children: [
                  box(Colors.blue),
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Column(
                        children: [
                          box(Colors.deepPurple , flex: 2),
                          box(Colors.white70 , flex: 3),
                          box(Colors.deepOrange , flex: 1)
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          box(Colors.teal , flex: 3),
                          box(Colors.lightGreen , flex: 1),
                          box(Colors.brown , flex: 2),
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          box(Colors.black87 , flex: 1),
                          box(Colors.deepOrange , flex: 2),
                          box(Colors.orangeAccent , flex: 3)
                        ],
                      ))
                    ],
                  )),
                  box(Colors.lime)
                ]
          )),
          Expanded(
              child: Row(
                children: [
                  box(Colors.purple),
                  box(Colors.greenAccent),
                  box(Colors.orange)
                ],
              ))
        ],
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
