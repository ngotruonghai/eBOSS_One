import 'package:flutter/material.dart';
import '../../Model/CompanyNoticeRecord/CompanyNoticeModel.dart';
import '../../Services/BaseServices/SharedPreferencesService.dart';
import '../../Services/NetWork/NetWorkRequest.dart';
import '../../ViewModel/CompanyNotice/CompanyNoticeViewModel.dart';
import '../CompanyNotice/CompanyNoticeView.dart';
import '../Task/TaskDetailView.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  List<Data>? listdata = null;
  String FullName = "Loading...";

  Future<String> loaddataMissionUnFinish() async {
    try {
      final responses = await NetWorkRequest.GetJWT(
          "/eBOSS/api/CompanyNoticeRecord/ListCompanyNotice_Home");
      final CompanyNotice = CompanyNoticeModel.fromJson(responses);
      listdata = CompanyNotice.data;
      return "";
    } catch (e) {
      return e.toString();
    }
  }

  // Load data refresh
  Future<void> _refreshData() async {
    // Giả định rằng bạn sẽ làm thao tác làm mới dữ liệu ở đây.
    await Future.delayed(Duration(seconds: 0));
    setState(() {
      loaddataMissionUnFinish();
    });
  }

  // Load data refresh
  Future<bool> loadData() async {
    listdata = null;
    //await Future.delayed(Duration(seconds: 1)); // Giả lập thời gian tải
    await loaddataMissionUnFinish();
    return true;
  }

  @override
  void initState() {
    super.initState();
    loaddataMissionUnFinish();
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = "${now.day}/${now.month}/${now.year}";
    String formattedDay = DateFormat('EEEE').format(now);
    return Center(
      child: Container(
        color: Color(0xffffff),
        child: RefreshIndicator(
            backgroundColor: Colors.white,
            child: FutureBuilder<bool>(
              future: loadData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Hiển thị trang tải
                  return CircularProgressIndicator(
                    color: Colors.deepOrange,
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else {
                  return ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                              padding:
                                  EdgeInsets.only(top: 10, left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 3),
                                    child: Text("Xin chào, ",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Roboto",
                                            color: Colors.black)),
                                  ),
                                  Text(
                                    SharedPreferencesService.getString(
                                            KeyServices.KeyUserName)
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: "Roboto",
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0, left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  formattedDate,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Roboto",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                  color: Colors.white60,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10),
                                                  child: Text(
                                                    "7g55 AM",
                                                    style: TextStyle(
                                                        fontFamily: "Roboto",
                                                        color: Colors.orange,
                                                        fontSize: 16),
                                                  )),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 0),
                                                child: Text("Giờ vào",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: "Roboto",
                                                        color: Colors.black)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  elevation: 4.0,
                                ),
                                Card(
                                  color: Colors.white60,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10),
                                                  child: Text(
                                                    "5g30 PM",
                                                    style: TextStyle(
                                                        fontFamily: "Roboto",
                                                        color: Colors.orange,
                                                        fontSize: 16),
                                                  )),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 0),
                                                child: Text("Giờ về",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: "Roboto",
                                                        color: Colors.black)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  elevation: 4.0,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                  color: Colors.white60,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10),
                                                  child: Text(
                                                    "14",
                                                    style: TextStyle(
                                                        fontFamily: "Roboto",
                                                        color: Colors.orange,
                                                        fontSize: 16),
                                                  )),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 0),
                                                child: Text("Số ngày công",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: "Roboto",
                                                        color: Colors.black)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  elevation: 4.0,
                                ),
                                Card(
                                  color: Colors.white60,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10),
                                                  child: Text(
                                                    "20",
                                                    style: TextStyle(
                                                        fontFamily: "Roboto",
                                                        color: Colors.orange,
                                                        fontSize: 16),
                                                  )),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 0),
                                                child: Text("Số ngày nghĩ phép",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: "Roboto",
                                                        color: Colors.black)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  elevation: 4.0,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                  color: Colors.white60,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10),
                                                  child: Text(
                                                    "14",
                                                    style: TextStyle(
                                                        fontFamily: "Roboto",
                                                        color: Colors.orange,
                                                        fontSize: 16),
                                                  )),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 0),
                                                child: Text("Quên chấm công",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: "Roboto",
                                                        color: Colors.black)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  elevation: 4.0,
                                ),
                                Card(
                                  color: Colors.white60,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10),
                                                  child: Text(
                                                    "20",
                                                    style: TextStyle(
                                                        fontFamily: "Roboto",
                                                        color: Colors.orange,
                                                        fontSize: 16),
                                                  )),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 0),
                                                child: Text("Số phép năm",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: "Roboto",
                                                        color: Colors.black)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  elevation: 4.0,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 40, left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Nhiệm vụ hôm nay",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto")),
                                InkWell(
                                  child: Text("Xem thêm"),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TaskDetail()),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 0, left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Nhiệm vụ chưa hoàn thành: ",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Roboto",
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 10, left: 10, right: 10),
                              child: SingleChildScrollView(
                                  scrollDirection: Axis
                                      .horizontal, // Đặt hướng cuộn là ngang
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                        maxHeight:
                                            200, // Đặt kích thước tối đa theo ý muốn
                                        maxWidth: double
                                            .infinity // Để ngăn chặn nó bị co lại
                                        ),
                                    child: Row(
                                      children: <Widget>[
                                        Card(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                                width: 180,
                                                height: 80,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom: 10),
                                                            child: SizedBox(
                                                              width: 180.0,
                                                              child: Text(
                                                                  "[Giao diện] xử lý moclup giao diện trên mobile",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      fontFamily:
                                                                          "Roboto",
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            )),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 0),
                                                            child: Text(
                                                              "Dự an",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "Roboto",
                                                                  fontSize: 13),
                                                            )),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 5),
                                                            child: Container(
                                                              width: 180,
                                                              child: Divider(
                                                                color:
                                                                    Colors.grey,
                                                                thickness: 1.0,
                                                                indent: 0,
                                                                endIndent: 0,
                                                                height: 5,
                                                              ),
                                                            )),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5),
                                                          child: Container(
                                                            width: 150,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: <Widget>[
                                                                Icon(
                                                                  Icons
                                                                      .access_time_filled_sharp,
                                                                  color: Colors
                                                                      .blue,
                                                                  size: 20,
                                                                ),
                                                                Text(
                                                                    "Quá hạn 15 ngày",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontFamily:
                                                                            "Roboto")),
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          elevation: 4.0,
                                        ),
                                        Card(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                                width: 180,
                                                height: 80,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom: 10),
                                                            child: SizedBox(
                                                              width: 180.0,
                                                              child: Text(
                                                                  "[Giao diện] xử lý moclup giao diện trên mobile",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      fontFamily:
                                                                          "Roboto",
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            )),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 0),
                                                            child: Text(
                                                              "Dự an",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "Roboto",
                                                                  fontSize: 13),
                                                            )),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 5),
                                                            child: Container(
                                                              width: 180,
                                                              child: Divider(
                                                                color:
                                                                    Colors.grey,
                                                                thickness: 1.0,
                                                                indent: 0,
                                                                endIndent: 0,
                                                                height: 5,
                                                              ),
                                                            )),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5),
                                                          child: Container(
                                                            width: 150,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: <Widget>[
                                                                Icon(
                                                                  Icons
                                                                      .access_time_filled_sharp,
                                                                  color: Colors
                                                                      .blue,
                                                                  size: 20,
                                                                ),
                                                                Text(
                                                                    "Quá hạn 15 ngày",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontFamily:
                                                                            "Roboto")),
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          elevation: 4.0,
                                        ),
                                        Card(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                                width: 180,
                                                height: 80,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom: 10),
                                                            child: SizedBox(
                                                              width: 180.0,
                                                              child: Text(
                                                                  "[Giao diện] xử lý moclup giao diện trên mobile",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      fontFamily:
                                                                          "Roboto",
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            )),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 0),
                                                            child: Text(
                                                              "Dự an",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "Roboto",
                                                                  fontSize: 13),
                                                            )),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 5),
                                                            child: Container(
                                                              width: 180,
                                                              child: Divider(
                                                                color:
                                                                    Colors.grey,
                                                                thickness: 1.0,
                                                                indent: 0,
                                                                endIndent: 0,
                                                                height: 5,
                                                              ),
                                                            )),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5),
                                                          child: Container(
                                                            width: 150,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: <Widget>[
                                                                Icon(
                                                                  Icons
                                                                      .access_time_filled_sharp,
                                                                  color: Colors
                                                                      .blue,
                                                                  size: 20,
                                                                ),
                                                                Text(
                                                                    "Quá hạn 15 ngày",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontFamily:
                                                                            "Roboto")),
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          elevation: 4.0,
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 40, left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Dự án",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto")),
                                InkWell(
                                  child: Text("Xem thêm"),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TaskDetail()),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 10, left: 10, right: 10),
                            child: SingleChildScrollView(
                                scrollDirection:
                                    Axis.horizontal, // Đặt hướng cuộn là ngang
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                      maxHeight:
                                          200, // Đặt kích thước tối đa theo ý muốn
                                      maxWidth: double
                                          .infinity // Để ngăn chặn nó bị co lại
                                      ),
                                  child: Row(
                                    children: <Widget>[
                                      Card(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 180,
                                              height: 50,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 10),
                                                          child: SizedBox(
                                                            width: 180.0,
                                                            child: Text(
                                                                "[Giao diện] xử lý moclup giao diện trên mobile",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        "Roboto",
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                          )),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 0),
                                                          child: Text(
                                                            "Dự an",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    "Roboto",
                                                                fontSize: 13),
                                                          )),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                        ),
                                        elevation: 4.0,
                                      ),
                                      Card(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 180,
                                              height: 50,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 10),
                                                          child: SizedBox(
                                                            width: 180.0,
                                                            child: Text(
                                                                "[Giao diện] xử lý moclup giao diện trên mobile",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        "Roboto",
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                          )),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 0),
                                                          child: Text(
                                                            "Dự an",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    "Roboto",
                                                                fontSize: 13),
                                                          )),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                        ),
                                        elevation: 4.0,
                                      ),
                                      Card(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 180,
                                              height: 50,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 10),
                                                          child: SizedBox(
                                                            width: 180.0,
                                                            child: Text(
                                                                "[Giao diện] xử lý moclup giao diện trên mobile",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    fontFamily:
                                                                        "Roboto",
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                          )),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 0),
                                                          child: Text(
                                                            "Dự an",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    "Roboto",
                                                                fontSize: 13),
                                                          )),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                        ),
                                        elevation: 4.0,
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 40, left: 10, right: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Thông báo nội bộ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto")),
                                InkWell(
                                  child: Text("Xem thêm"),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CompanyNoticeView()),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Column(
                            //CompanyNoticeViewModel
                            children: [
                              if (listdata == null)
                                Text("Đang Load")
                              else
                                Column(
                                  children: listdata!
                                      .map((e) =>
                                          CompanyNoticeViewModel(data: e))
                                      .toList(),
                                )
                            ],
                          )
                        ],
                      );
                    },
                  ); // Trả về một widget rỗng để tránh hiển thị trang tải
                }
              },
            ),
            onRefresh: _refreshData),
      ),
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
