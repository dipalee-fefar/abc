import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomColour extends StatelessWidget {
  const CustomColour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Column(
                children: [
                  box(Colors.pink),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Row(
                        children: [
                          box(Colors.purple),
                          box(Colors.cyan),
                        ],
                      )),
                      Expanded(child:Row(
                        children: [
                          box(Colors.lime),
                          box(Colors.blueGrey)
                        ],
                      )),
                    ],
                  )),
                  box(Colors.orange)
                ],
              )
          ),
          Expanded(
              child:Column(
                children: [
                  box(Colors.yellow),
                  Expanded(child:Column(
                    children: [
                      box(Colors.black87),
                      box(Colors.brown,flex: 2),
                      box(Colors.redAccent)
                    ],
                  )),
                  box(Colors.tealAccent),
                ],
              )
          ),
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
