import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskDetail extends StatefulWidget {
  @override
  State<TaskDetail> createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  Future<void> _refreshData() async {
    // Giả định rằng bạn sẽ làm thao tác làm mới dữ liệu ở đây.
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Quản lý nhiệm vụ"),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.account_balance_wallet),
                child: Text(
                  "Nhiệm vụ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
                ),
              ),
              Tab(
                icon: Icon(Icons.account_tree_sharp),
                child: Text(
                  "Thống kê",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
                ),
              ),
              Tab(
                icon: Icon(Icons.ad_units_outlined),
                child: Text(
                  "Báo cáo",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TaskManagement(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
    );
  }

  Container TaskManagement() {
    return Container(
      color: Color(0xFFdfe6e9),
      child: RefreshIndicator(
          backgroundColor: Colors.white,
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xFFb8e994)),
                                    child: Icon(Icons.bookmark_added_outlined,
                                        size: 30, color: Color(0xFF009432)),
                                  ),
                                  Text(
                                    "MDA23060250",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      print("object");
                                    },
                                    child: Icon(
                                      Icons.my_library_books,
                                      size: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Thông tin: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text(
                                        "Phần mềm yêu cầu chức năng và debug",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Người ghi: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("Anh Vũ",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Người nhận: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("Trung Đức",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Chi tiết: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("Phiếu báo cáo kiểm soát sản xuất Phiếu báo cáo kiểm soát sản xuất Phiếu báo cáo kiểm soát sản xuất",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Ngày tạo: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("20/10/2023",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto", fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xFFb8e994)),
                                    child: Icon(Icons.bookmark_added_outlined,
                                        size: 30, color: Color(0xFF009432)),
                                  ),
                                  Text(
                                    "MDA23060250",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      print("object");
                                    },
                                    child: Icon(
                                      Icons.my_library_books,
                                      size: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Thông tin: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text(
                                        "Phần mềm yêu cầu chức năng và debug",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Người ghi: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("Anh Vũ",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Người nhận: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("Trung Đức",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Chi tiết: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("Phiếu báo cáo kiểm soát sản xuất Phiếu báo cáo kiểm soát sản xuất Phiếu báo cáo kiểm soát sản xuất",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Ngày tạo: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("20/10/2023",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto", fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xFFb8e994)),
                                    child: Icon(Icons.bookmark_added_outlined,
                                        size: 30, color: Color(0xFF009432)),
                                  ),
                                  Text(
                                    "MDA23060250",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      print("object");
                                    },
                                    child: Icon(
                                      Icons.my_library_books,
                                      size: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Thông tin: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text(
                                        "Phần mềm yêu cầu chức năng và debug",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Người ghi: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("Anh Vũ",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Người nhận: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("Trung Đức",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Chi tiết: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("Phiếu báo cáo kiểm soát sản xuất Phiếu báo cáo kiểm soát sản xuất Phiếu báo cáo kiểm soát sản xuất",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Ngày tạo: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("20/10/2023",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto", fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xFFb8e994)),
                                    child: Icon(Icons.bookmark_added_outlined,
                                        size: 30, color: Color(0xFF009432)),
                                  ),
                                  Text(
                                    "MDA23060250",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      print("object");
                                    },
                                    child: Icon(
                                      Icons.my_library_books,
                                      size: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Thông tin: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text(
                                        "Phần mềm yêu cầu chức năng và debug",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Người ghi: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("Anh Vũ",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Người nhận: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("Trung Đức",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Chi tiết: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("Phiếu báo cáo kiểm soát sản xuất Phiếu báo cáo kiểm soát sản xuất Phiếu báo cáo kiểm soát sản xuất",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Ngày tạo: ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  Expanded(
                                    child: Text("20/10/2023",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Roboto", fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          onRefresh: _refreshData),
    );
  }
}
