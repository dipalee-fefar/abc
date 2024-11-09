import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "hello dipalee",
            style: TextStyle(fontSize: 50),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                hintText: "Enter Your Name",
                label:Text("Name"),
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
              ),
              hintText: "Enter the password",
              label:Text("Password"),
            ),
          ),
          SizedBox(height: 20),
          TextButton(onPressed: () {
            print(name.text);
            print(password);
          },child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("login"),
            ),
          ),)
        ],
      ),

    );
  }
}