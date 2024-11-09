import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'D:\/abc/dipaleeUI/lib/database.dart';
import 'database.dart';

class UserEntry extends StatefulWidget {
  const UserEntry({super.key});

  @override
  State<UserEntry> createState() => _UserEntryState();
}

class _UserEntryState extends State<UserEntry> {
  GlobalKey<FormState> key=GlobalKey();
  TextEditingController name=TextEditingController();
  MyDataBase db=MyDataBase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UserList"),),
      body: Form(
        key:key,
        child: Column(children: [
          TextFormField(
            controller: name,

          ),
          ElevatedButton(onPressed: () async {
            if(key.currentState!.validate()){
              await db.insertDataInTBL_USER(name.text.toString());
              Navigator.pop(context,true);
            }
          }, child: Text("Submit"))
        ],),
      ),
    );
  }
}
