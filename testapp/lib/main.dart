import 'package:flutter/material.dart';
// import 'package:testapp/page/home_page.dart';
// import 'package:testapp/page/home_page2.dart';
// import 'package:testapp/page/home_page3.dart';
import 'package:testapp/page/home_page4.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: const HomePage());
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      // routes: {"/": (context) => HomePase4()},
      home: HomePage4(),
    );
  }
}

// side: BorderSide(
//                 color: Colors.white, // Viền trắng cho nút
//                 width: 2,
//               ), //
