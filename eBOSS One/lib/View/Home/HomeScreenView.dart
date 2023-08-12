import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Services/BaseServices/SharedPreferencesService.dart';
import '../Task/TaskDetailView.dart';

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
    //print(SharedPreferencesService.GetString("Token"));

    // Thực hiện các tác vụ tải dữ liệu khác ở đây

    return true;
  }

  _getData() async {
    String data = SharedPreferencesService.getString(KeyServices.KeyUserName);
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
      child: Container(
        color: Color(0xFFdfe6e9),
        child:  RefreshIndicator(
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
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                            child: Container(
                              //color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    color: Color(0xFFdfe6e9),
                                    child: Padding(padding: EdgeInsets.only(bottom: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            "QUẢN LÝ NHIỆM VỤ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "Roboto",
                                                fontWeight:FontWeight.bold,
                                                fontSize: 15),
                                          )
                                        ],
                                      ),),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Padding(padding: EdgeInsets.only(top: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Card(
                                              color: Colors.white,
                                              elevation: 10.0,
                                              shape:  RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12.0),
                                                //side: BorderSide(color: Colors.black, width: 0.0),
                                              ),
                                              child: SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: InkWell(
                                                  onTap: (){
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => TaskDetail()),
                                                    );
                                                  },
                                                  child:  Column(
                                                    children: [
                                                      Padding(padding: EdgeInsets.only(top: 20,),
                                                        child: Icon(color: Color(0xFFe67e22),Icons.account_balance_wallet_rounded,size: 30,),),

                                                      Padding(padding: EdgeInsets.only(top: 10), child: Text("Nhiệm vụ"))
                                                    ],
                                                  ),
                                                ),
                                              ),

                                            ),
                                            Card(
                                              color: Colors.white,
                                              elevation: 10.0,
                                              shape:  RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12.0),
                                                //side: BorderSide(color: Colors.black, width: 0.0),
                                              ),
                                              child: SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: Column(
                                                  children: [
                                                    Padding(padding: EdgeInsets.only(top: 20,),
                                                      child: Icon(color: Color(0xFFe67e22),Icons.account_balance_wallet_sharp,size: 30,),),

                                                    Padding(padding: EdgeInsets.only(top: 10), child: Text("Chấm công"))
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Card(
                                              color: Colors.white,
                                              elevation: 10.0,
                                              shape:  RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12.0),
                                                //side: BorderSide(color: Colors.black, width: 0.0),
                                              ),
                                              child: SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: Column(
                                                  children: [
                                                    Padding(padding: EdgeInsets.only(top: 20,),
                                                      child: Icon(color: Color(0xFFe67e22),Icons.add_box_sharp,size: 30,),),

                                                    Padding(padding: EdgeInsets.only(top: 10), child: Text("Dự án"))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),),
                                        Padding(padding: EdgeInsets.only(top: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Card(
                                              color: Colors.white,
                                              elevation: 10.0,
                                              shape:  RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12.0),
                                                //side: BorderSide(color: Colors.black, width: 0.0),
                                              ),
                                              child: SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: InkWell(
                                                  onTap: (){
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => TaskDetail()),
                                                    );
                                                  },
                                                  child:  Column(
                                                    children: [
                                                      Padding(padding: EdgeInsets.only(top: 20,),
                                                        child: Icon(color: Color(0xFFe67e22),Icons.account_balance_wallet_rounded,size: 30,),),

                                                      Padding(padding: EdgeInsets.only(top: 10), child: Text("Nhiệm vụ"))
                                                    ],
                                                  ),
                                                ),
                                              ),

                                            ),
                                            Card(
                                              color: Colors.white,
                                              elevation: 10.0,
                                              shape:  RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12.0),
                                                //side: BorderSide(color: Colors.black, width: 0.0),
                                              ),
                                              child: SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: Column(
                                                  children: [
                                                    Padding(padding: EdgeInsets.only(top: 20,),
                                                      child: Icon(color: Color(0xFFe67e22),Icons.account_balance_wallet_sharp,size: 30,),),

                                                    Padding(padding: EdgeInsets.only(top: 10), child: Text("Chấm công"))
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Card(
                                              color: Colors.white,
                                              elevation: 10.0,
                                              shape:  RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12.0),
                                                //side: BorderSide(color: Colors.black, width: 0.0),
                                              ),
                                              child: SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: Column(
                                                  children: [
                                                    Padding(padding: EdgeInsets.only(top: 20,),
                                                      child: Icon(color: Color(0xFFe67e22),Icons.add_box_sharp,size: 30,),),

                                                    Padding(padding: EdgeInsets.only(top: 10), child: Text("Dự án"))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
