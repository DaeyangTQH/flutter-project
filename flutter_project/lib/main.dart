import 'package:flutter/material.dart';

void main() {
  print("1. main started");

  runApp(
    const MyApp(),
  );

  print("2. runApp finished");
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { // Cái cần build
    return const MaterialApp( // Khung của toàn bộ app
      home: HelloScreen(),
    );
  }
}

class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Hello Haichan",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}