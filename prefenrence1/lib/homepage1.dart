import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Biến để lưu màu được chọn
  Color? selectedColor;

  // Biến để lưu màu nền của Scaffold
  Color scaffoldBackgroundColor = Colors.white;

  // Danh sách các màu có thể chọn
  final List<Color> colors = [
    const Color(0xFFADD8E6), // Xanh nhạt
    const Color(0xFFFF69B4), // Hồng
    const Color(0xFF1C2526), // Đen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          scaffoldBackgroundColor, // Màu nền dựa trên scaffoldBackgroundColor
      // appBar: AppBar(title: const Text("Setting"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Setting',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Choosing the theme sets the tone and personality of your app',
              style: TextStyle(fontSize: 16, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  colors.map((color) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedColor = color; // Chỉ cập nhật màu được chọn
                          // print(
                          //   'Selected color: $selectedColor',
                          // ); // Kiểm tra giá trị
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        width: 60.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: color,
                          border: Border.all(
                            color:
                                selectedColor == color
                                    ? Colors.black
                                    : Colors.transparent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    );
                  }).toList(),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed:
                  selectedColor == null
                      ? null // Vô hiệu hóa nút nếu chưa chọn màu
                      : () {
                        // Khi bấm nút Apply, cập nhật màu nền
                        setState(() {
                          scaffoldBackgroundColor =
                              selectedColor!; // Cập nhật màu nền
                          // print(
                          //   'Applied color: $scaffoldBackgroundColor',
                          // ); // Kiểm tra giá trị
                        });
                        // Hiển thị SnackBar để thông báo
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Theme applied with color: ${selectedColor.toString()}',
                            ),
                          ),
                        );
                      },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                disabledBackgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),
              child: const Text(
                'Apply',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
