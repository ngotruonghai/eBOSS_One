import 'package:flutter/material.dart';

class DetailCompanyNoticeViewModel extends StatefulWidget {
  @override
  State<DetailCompanyNoticeViewModel> createState() =>
      _DetailCompanyNoticeViewModel();
}

class _DetailCompanyNoticeViewModel
    extends State<DetailCompanyNoticeViewModel> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return (Scaffold(
      appBar: AppBar(
        title: Text("Chi tiết thông báo"),
        backgroundColor: Color(0xFFe67e22),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Thông tin chung",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontFamily: "Roboto"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Bộ phận thông báo",
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
                            "EDT",
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
                  "Ngưởi phát hành",
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
                            "Ngô Trường Hải",
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
                  "Ngày phát hành",
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
                            "04/08/1999",
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
                  "Nội dung thông báo:",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Ngày phát hànhdsdsadsadsadsassssssssssssssssssss"
                      "hànhdsdsadsadsadsasssssssssssssssssssshànhdsdsadsadsadsassssssssssssssssssss"
                      "hànhdsdsadsadsadsassssssssssssssssssss"
                      "hànhdsdsadsadsadsassssssssssssssssssss"
                      "hànhdsdsadsadsadsassssssssssssssssssss"
                      "hànhdsdsadsadsadsassssssssssssssssssss"
                      "hànhdsdsadsadsadsassssssssssssssssssss",

                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                      fontFamily: "Roboto"),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
