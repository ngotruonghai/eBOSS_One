import 'package:flutter/material.dart';

class TaskDetailView extends StatefulWidget {
  TaskDetailView({super.key, required this.workID});

  final String workID;
  @override
  State<TaskDetailView> createState() => _TaskDetailView();
}

class _TaskDetailView extends State<TaskDetailView> {


   //function
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Chi tiết nhiệm vụ"),
        backgroundColor: Color(0xFFe67e22),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: SingleChildScrollView(
          child:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Center(
              child: RefreshIndicator(
                backgroundColor: Colors.white,
                child: FutureBuilder<bool>(
                    future: loadData(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        // Hiển thị trang tải
                        return Center(
                          child: CircularProgressIndicator(
                            color: Colors.deepOrange,
                          ),
                        );
                      } else {
                        return SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Center(
                                  child: Text(
                                    "Thông tin chung",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontFamily: "Roboto"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "TIến độ công việc",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black87,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 1),
                                  child: Card(
                                      color: Colors.white60,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Colors.white70,
                                          width: 0.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 50,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 15, top: 15),
                                          child: Text(
                                            "Đợi nhận việc",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                                fontFamily: "Roboto"),
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Chủ đề",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black87,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 1),
                                  child: Card(
                                      color: Colors.white60,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Colors.white70,
                                          width: 0.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 15, top: 15,bottom: 15,right: 15),
                                          child: Text(
                                            "Viết API danh sách công  việc",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                                fontFamily: "Roboto"),
                                          ),
                                        ),
                                      ))),

                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Chi tiết công việc",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black87,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 1),
                                  child: Card(
                                      color: Colors.white60,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Colors.white70,
                                          width: 0.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 15, top: 15,bottom: 15,right: 15),
                                          child: Text(
                                            ".Thiết lập API \n .Kết nối DB \n .Test chức năng",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                                fontFamily: "Roboto"),
                                          ),
                                        ),
                                      ))),

                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Dự án phần mềm",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black87,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 1),
                                  child: Card(
                                      color: Colors.white60,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Colors.white70,
                                          width: 0.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 15, top: 15,bottom: 15,right: 15),
                                          child: Text(
                                            "Hưng NHẤT ERP",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Roboto"),
                                          ),
                                        ),
                                      ))),

                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Dự án bảo trì",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black87,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 1),
                                  child: Card(
                                      color: Colors.white60,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Colors.white70,
                                          width: 0.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 15, top: 15,bottom: 15,right: 15),
                                          child: Text(
                                            "Hưng NHẤT ERP ",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Roboto"),
                                          ),
                                        ),
                                      ))),

                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Dự kiến hoàn thành",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black87,
                                              fontFamily: "Roboto"),
                                        ),
                                        Card(
                                            color: Colors.white60,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.white70,
                                                width: 0.0,
                                              ),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            child: Container(
                                              width: 150,
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 15, top: 15,bottom: 15,right: 15),
                                                child: Text(
                                                  "16/08, lúc 10 giờ",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.black,
                                                      fontFamily: "Roboto"),
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Khối lượng",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black87,
                                              fontFamily: "Roboto"),
                                        ),
                                        Card(
                                            color: Colors.white60,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Colors.white70,
                                                width: 0.0,
                                              ),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            child: Container(
                                              width: 150,
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 15, top: 15,bottom: 15,right: 15),
                                                child: Text(
                                                  "Hao < 1 giờ",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.black,
                                                      fontFamily: "Roboto"),
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Ghi chú",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black87,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 1),
                                  child: Card(
                                      color: Colors.white60,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Colors.white70,
                                          width: 0.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 15, top: 15,bottom: 15,right: 15),
                                          child: Text(
                                            "Không có gì",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                                fontFamily: "Roboto"),
                                          ),
                                        ),
                                      ))),
                            ],
                          ),
                        );
                      }
                    }),
                onRefresh: _refreshData,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
