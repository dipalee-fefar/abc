import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Image123 extends StatelessWidget {
  const Image123({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://t4.ftcdn.net/jpg/06/07/81/37/360_F_607813776_Pw2DsqsWDg4mCdzZqrXvPWNGZqzQ7he1.jpg",
            height: 500,
            width: 500,
            fit: BoxFit.fill,
          ),
          Container(
            child: Center(
              child: Text(
                "Jay shree krishna",
                style: TextStyle(color: Colors.orange, fontSize: 200),
              ),
            ),
          )
        ],
      ),
    );
  }
}
