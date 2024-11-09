import 'package:flutter/material.dart';

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Dynamic GridView Example')),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns
            crossAxisSpacing: 10.0, // Horizontal spacing
            mainAxisSpacing: 10.0, // Vertical spacing
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 30,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.teal[100 * (index % 9)],
              child: Center(
                child: Text('Item $index', style: TextStyle(fontSize: 20)),
              ),
            );
          },
        ),
      );
  }
}
