import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirm = true;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "enter name";
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  labelText: 'name',
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "enter password";
                  }
                  if (value.length < 8) {
                    return "enter pass morethan 8 char";
                  }
                },
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                    child: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              TextFormField(
                controller: confirmController,
                decoration: InputDecoration(
                    hintText: "Enter confirm password",
                    labelText: "Confirm password",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureConfirm = !_obscureConfirm;
                        });
                      },
                      child: Icon(
                        _obscureConfirm
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    )
                ),
                validator: (value) {
                  if (confirmController.text != passwordController.text) {
                    return "enter confirm password";
                  }
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    // Add login functionality here
                    // For simplicity, print the login details
                    print('Email: ${nameController.text}');
                    print('Password: ${passwordController.text}');
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
