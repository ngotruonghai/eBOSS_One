import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  Future<void> _refreshData() async {
    // Giả định rằng bạn sẽ làm thao tác làm mới dữ liệu ở đây.
    await Future.delayed(Duration(seconds: 2));
  }

  String FullName = "Loading...";

  Future<bool> loadData() async {
    await Future.delayed(Duration(seconds: 1)); // Giả lập thời gian tải

    // Thực hiện các tác vụ tải dữ liệu khác ở đây

    return true;
  }

  _getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String data = prefs.getString("UserName") ?? "Không có tồn tại User này";
    return data;
  }

  @override
  void initState() {
    super.initState();
    _getData().then((value) {
      setState(() {
        FullName = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RefreshIndicator(
          backgroundColor: Colors.white,
          child: FutureBuilder<bool>(
            future: loadData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // Hiển thị trang tải
                return CircularProgressIndicator();
              } else {
                return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFf1f2f6),
                            ),
                            width: double.infinity,
                            height: 150,
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              child: Text(FullName),
                            )),
                          ),
                        ],
                      ),
                    );
                  },
                ); // Trả về một widget rỗng để tránh hiển thị trang tải
              }
            },
          ),
          onRefresh: _refreshData),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 2'),
    );
  }
}
