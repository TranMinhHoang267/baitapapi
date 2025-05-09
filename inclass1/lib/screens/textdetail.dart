import 'package:flutter/material.dart';

class TextDetailPage extends StatelessWidget {
  const TextDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Detail')),
      body: Center(
        child: Image.asset(
          'assets/images/anh2.jpg', 
          height: 300,
        ),
      ),
    );
  }
}
