import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Màu nền giống giao diện
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Quay lại trang trước
          },
        ),
      ),

      // Viết phần thân của phần đăng nhập
      body: Center(
        // padding: EdgeInsets.all(16),
        // mainAxisAlignment: MainAxisAlignment.center, canh theo chìu dọc
        // crossAxisAlignment: CrossAxisAlignment.center,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://example.com/avatar.png"),
              ),
            ),
            SizedBox(height: 30),
            Text("Xin chào, User_1", style: TextStyle(fontSize: 18)),

            SizedBox(height: 30),
            // SizedBox(
            //   height: 200,
            //   width: 400,
            //   child:
            //   TextField(
            //     decoration: InputDecoration(
            //       labelText: "Ô Nhập mật khẩu ",
            //       border: OutlineInputBorder(),
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ), // Khoảng cách 2 bên
              child: SizedBox(
                width: 250, // Đặt chiều rộng nhỏ lại
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Nhập số điện thoại / Gmail",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ), // Khoảng cách 2 bên
              child: SizedBox(
                width: 250, // Đặt chiều rộng nhỏ lại
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Nhập mật khẩu",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
