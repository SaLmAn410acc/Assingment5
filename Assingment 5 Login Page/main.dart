// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Login Page")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Username"),
                SizedBox(
                  width: 10,
                ),
                Container(width: 250, height: 50, child: TextField(
                    decoration: const InputDecoration(
                          hintText: ('Enter Username'),
                    ),
                ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Password"),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 250,
                    height: 50,
                    child: TextField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: ('Enter Password'),),
                    ),
                    ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
