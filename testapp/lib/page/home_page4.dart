import 'package:flutter/material.dart';

class HomePage4 extends StatelessWidget {
  const HomePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Nền đen cho toàn bộ màn hình
      child: Column(
        children: [
          // Hàng chứa 4 nút
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('TV-Series được nhấn!');
                  },
                  child: Text('TV-Series'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    elevation: 0,
                    side: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Phim được nhấn!');
                  },
                  child: Text('Phim'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    elevation: 0,
                    side: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Đã xem được nhấn!');
                  },
                  child: Text('Đã xem'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    elevation: 0,
                    side: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Chỉnh sửa được nhấn!');
                  },
                  child: Text('Chỉnh sửa'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    elevation: 0,
                    side: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
              ],
            ),
          ),
          // Danh sách phim
          Expanded(
            child: ListView.builder(
              itemCount: 20, // 20 trang phim
              itemBuilder: (context, index) {
                // Dữ liệu giả lập cho từng mục
                String title;
                Color imageColor;

                // Tạo dữ liệu giả lập dựa trên chỉ số
                switch (index % 4) {
                  case 0:
                    title = '1917';
                    imageColor = Colors.grey;
                    break;
                  case 1:
                    title = 'Dune';
                    imageColor = Colors.orange;
                    break;
                  case 2:
                    title = 'Oppenheimer';
                    imageColor = Colors.red;
                    break;
                  case 3:
                    title = 'Perfect Blue';
                    imageColor = Colors.blue;
                    break;
                  default:
                    title = 'Phim $index';
                    imageColor = Colors.grey;
                }

                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Hình ảnh phim (giả lập bằng Container)
                      Container(
                        width: 200,
                        height: 100, // Poster cao hơn
                        decoration: BoxDecoration(
                          color: imageColor, // Màu giả lập cho hình ảnh
                          border: Border.all(
                            color: Colors.blue,
                            width: 2,
                          ), // Viền xanh
                        ),
                        child: Center(
                          child: Text(
                            title,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      // Tiêu đề
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Nút play
                      IconButton(
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          print('Phát $title');
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
