
import 'package:flutter/material.dart';



import 'screen/screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("api test"),
        ),
      
        body:  ListChungKhoanScreen(),
      ),
    );
  }
}
