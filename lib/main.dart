import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mybar/homescreen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Home_Page();
                  },
                ));
              },
              child: Text("Go TO Main Application")),
        ));
  }
}
