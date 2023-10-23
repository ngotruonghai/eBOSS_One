import 'package:flutter/material.dart';

class UserInfoView extends StatefulWidget {
  UserInfoView({super.key});

  @override
  State<UserInfoView> createState() => _UserInfoView();
}

class _UserInfoView extends State<UserInfoView> {
  Future<bool> loadData() async {
    await Future.delayed(Duration(seconds: 2)); // Giả lập thời gian tải
    return true;
  }

  Future<void> _refreshData() async {
    // Giả định rằng bạn sẽ làm thao tác làm mới dữ liệu ở đây.
    await Future.delayed(Duration(seconds: 0));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RefreshIndicator(
        backgroundColor: Colors.white,
        child: FutureBuilder<bool>(
            future: loadData(), builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Hiển thị trang tải
            return CircularProgressIndicator(
              color: Colors.deepOrange,
            );
          }
          else{
            return Container(
              color: Color(0xFFdfe6e9),
              child:  ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index){
                    return Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset('assets/Email.png'),
                                  Text("data")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),);
                  }
              ),
            );
          }
        }),
        onRefresh: _refreshData,
      ),
    );
  }
}
