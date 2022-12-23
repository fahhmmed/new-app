// ignore_for_file: file_names, prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ne_w/pages/register.dart';

import 'package:ne_w/shared/contants.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color? BTNgreen;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 64,
                ),
                TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: decorationTextfield.copyWith(
                        hintText: "Enter your Email: ")),
                const SizedBox(
                  height: 33,
                ),
                TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: decorationTextfield.copyWith(
                        hintText: "Enter your password: ")),
                const SizedBox(
                  height: 33,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "sign in",
                    style: TextStyle(fontSize: 19),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(BTNgreen),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("do not have an account?",
                        style: TextStyle(fontSize: 20)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: Text('sign up',
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
