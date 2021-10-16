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
                Text("User ID"),
                SizedBox(
                  width: 12,
                ),
                Container(width: 290, height: 80, child: TextField(),
                ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Pass"),
                SizedBox(
                  width: 12,
                ),
                Container(
                    width: 290,
                    height: 80,
                    child: TextField( ),
                    ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login!!!"),
            ),
          ],
        ),
      ),
    );
  }
}
