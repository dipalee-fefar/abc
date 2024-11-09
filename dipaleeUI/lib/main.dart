// import 'package:dipaleeui/colours.dart';
// import 'package:dipaleeui/customColour.dart';
// import 'package:dipaleeui/login.dart';
// import 'package:dipaleeui/login2.dart';
import 'package:dipaleeui/birthdaycard.dart';
import 'package:dipaleeui/drawerExp.dart';
import 'package:dipaleeui/firstpage.dart';
import 'package:dipaleeui/gridView.dart';
import 'package:dipaleeui/image.dart';
import 'package:dipaleeui/login.dart';
import 'package:dipaleeui/login2.dart';
import 'package:dipaleeui/gridExp.dart';
import 'package:dipaleeui/randomColor.dart';
// import 'package:dipaleeui/rowcolumn.dart';
import 'package:flutter/material.dart';

import 'Crud.dart';
import 'demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,

      home:CRUDScreen(),
    );
  }
}
