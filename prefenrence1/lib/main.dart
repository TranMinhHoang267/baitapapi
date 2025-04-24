import 'package:flutter/material.dart';
import 'homepage1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:
            null, // Đảm bảo không ghi đè màu nền của Scaffold
      ),
      home: const MyHomePage(),
    );
  }
}
