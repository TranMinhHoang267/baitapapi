import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text("Home Page"),
      ),
      // viết phần thân cho Homepage
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("hiihihii"),

            // viết phần row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Nút số 1')),
                ElevatedButton(onPressed: () {}, child: Text("Nút số 2")),
                ElevatedButton(onPressed: () {}, child: Text("Nút số 3")),
              ],
            ),
            SizedBox(height: 20),

            // Tạo textFiled
            SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Ô nhập dữ liệu",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
