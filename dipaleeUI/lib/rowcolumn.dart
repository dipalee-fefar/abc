import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(

                  child: Container(
                    color: Colors.black,
                  ),
                ),Expanded(
                  child: Container(
                    color: Colors.amber,
                  ),
                ),Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.brown,
                  ),
                ),Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.deepPurple,
                  ),
                ),Expanded(
                  child: Container(
                    color: Colors.indigoAccent,
                  ),
                )
              ],
            ),
          ),  Expanded(

            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.teal,
                  ),
                ),Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}





// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class RowColumn extends StatelessWidget {
//   const RowColumn({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           Expanded(
//             child: Column(
//                 children: [
//                   mybox(Colors.pink),
//                   mybox(Colors.black),
//                   mybox(Colors.orange)
//                 ],
//             ),
//           ),     Expanded(
//             child: Column(
// children: [
//         mybox(Colors.yellow),
//         mybox(Colors.blueAccent),
//         mybox(Colors.tealAccent)
// ],
//             ),
//           ),     Expanded(
//             child: Column(
// children: [
//           mybox(Colors.lightBlue),
//           mybox(Colors.brown),
//           mybox(Colors.orange)
// ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget mybox(Color Mycolor){
//     return Expanded(
//       child: Container(
//         color: Mycolor,
//       ),
//     );
//   }
// }