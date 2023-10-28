import 'package:flutter/material.dart';
import '../../Model/UserInfo/UserInfoModel.dart';
import '../../Services/BaseServices/SharedPreferencesService.dart';
import '../../Services/NetWork/NetWorkRequest.dart';
import '../Login/LoginLayout.dart';

class UserInfoView extends StatefulWidget {
  UserInfoView({super.key});

  @override
  State<UserInfoView> createState() => _UserInfoView();
}



class _UserInfoView extends State<UserInfoView> {
  Future<bool> loadData() async {
    await loaddataMissionUnFinish();
    await Future.delayed(Duration(seconds: 2)); // Giả lập thời gian tải
    return true;
  }

  List<Data>? listdata;
  Future<String> loaddataMissionUnFinish() async {
    try {
      final responses = await NetWorkRequest.GetJWT(
          "/eBOSS/api/UserInfo/GetUserInfoID?UserID="+await SharedPreferencesService.getString(KeyServices.KeyUserID));
      final UserInfo = UserInfoModel.fromJson(responses);
      listdata = UserInfo.data;
      return "Succes";
    } catch (e) {
      return e.toString();
    }
  }


  Future<void> _refreshData() async {
    // Giả định rằng bạn sẽ làm thao tác làm mới dữ liệu ở đây.
    await Future.delayed(Duration(seconds: 0));
    setState(() {
      loaddataMissionUnFinish();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
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
              } else {
                return Container(
                  color: Color(0xFFdfe6e9),
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 10, top: 10),
                                        child: Container(
                                          color: Colors.white,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width:
                                                    50, // Set your desired width
                                                height:
                                                    50, // Set your desired height
                                                child: Image.asset(
                                                    'assets/user-circle.png'),
                                              ),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(listdata![0].fullName.toString(),
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black,
                                                              fontFamily:
                                                                  "Roboto")),
                                                      Text("Bộ phận: "+listdata![0].insuranceCompanyID.toString(),
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              color:
                                                                  Colors.black,
                                                              fontFamily:
                                                                  "Roboto")),
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: Colors.white,
                                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 00)
                                  ,child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(padding: EdgeInsets.only(top: 10),
                                            child: Text("Thông tin cá nhân",style: TextStyle(
                                                fontSize: 13,
                                                fontWeight:
                                                FontWeight
                                                    .bold,
                                                color:
                                                Colors.black,
                                                fontFamily:
                                                "Roboto"),),),
                                          ],
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 10,bottom: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width:
                                                  20, // Set your desired width
                                                  height:
                                                  20, // Set your desired height
                                                  child: Image.asset('assets/Email.png'),
                                                ),
                                                Padding(
                                                    padding:
                                                    EdgeInsets.only(left: 10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text("Email",
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color:
                                                                Colors.grey,
                                                                fontFamily:
                                                                "Roboto")),
                                                        Text(listdata![0].emailFordward.toString(),
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color:
                                                                Colors.black,
                                                                fontFamily:
                                                                "Roboto")),
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          ],
                                        ),),
                                        Padding(padding: EdgeInsets.only(top: 10,bottom: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width:
                                                  20, // Set your desired width
                                                  height:
                                                  20, // Set your desired height
                                                  child: Image.asset('assets/Phone.png'),
                                                ),
                                                Padding(
                                                    padding:
                                                    EdgeInsets.only(left: 10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text("Số điện thoại",
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color:
                                                                Colors.grey,
                                                                fontFamily:
                                                                "Roboto")),
                                                        Text(listdata![0].mobile.toString(),
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color:
                                                                Colors.black,
                                                                fontFamily:
                                                                "Roboto")),
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          ],
                                        ),),
                                        Padding(padding: EdgeInsets.only(top: 10,bottom: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width:
                                                  20, // Set your desired width
                                                  height:
                                                  20, // Set your desired height
                                                  child: Icon((Icons.cake),color: Colors.orange,size:25),
                                                ),
                                                Padding(
                                                    padding:
                                                    EdgeInsets.only(left: 10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text("SInh nhật",
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color:
                                                                Colors.grey,
                                                                fontFamily:
                                                                "Roboto")),
                                                        Text(listdata![0].birthDate.toString(),
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color:
                                                                Colors.black,
                                                                fontFamily:
                                                                "Roboto")),
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          ],
                                        ),)
                                      ],
                                    ),),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: Colors.white,
                                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 00)
                                    ,child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(padding: EdgeInsets.only(top: 10),
                                            child: Text("Thông tin công việc",style: TextStyle(
                                                fontSize: 13,
                                                fontWeight:
                                                FontWeight
                                                    .bold,
                                                color:
                                                Colors.black,
                                                fontFamily:
                                                "Roboto"),),)
                                          ],
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 10,bottom: 5),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width:
                                                    20, // Set your desired width
                                                    height:
                                                    20, // Set your desired height
                                                    child: Image.asset('assets/Person.png'),
                                                  ),
                                                  Padding(
                                                      padding:
                                                      EdgeInsets.only(left: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Text("Mã nhân viên",
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  color:
                                                                  Colors.grey,
                                                                  fontFamily:
                                                                  "Roboto")),
                                                          Text(listdata![0].employeeID.toString(),
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  color:
                                                                  Colors.black,
                                                                  fontFamily:
                                                                  "Roboto")),
                                                        ],
                                                      ))
                                                ],
                                              ),
                                            ],
                                          ),),
                                        Padding(padding: EdgeInsets.only(top: 10,bottom: 5),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width:
                                                    20, // Set your desired width
                                                    height:
                                                    20, // Set your desired height
                                                    child: Image.asset('assets/Perm contact calendar.png'),
                                                  ),
                                                  Padding(
                                                      padding:
                                                      EdgeInsets.only(left: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Text("Trạng thái hợp đồng",
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  color:
                                                                  Colors.grey,
                                                                  fontFamily:
                                                                  "Roboto")),
                                                          Text("0968103653",
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  color:
                                                                  Colors.black,
                                                                  fontFamily:
                                                                  "Roboto")),
                                                        ],
                                                      ))
                                                ],
                                              ),
                                            ],
                                          ),),
                                        Padding(padding: EdgeInsets.only(top: 10,bottom: 5),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width:
                                                    20, // Set your desired width
                                                    height:
                                                    20, // Set your desired height
                                                    child: Image.asset('assets/Calendar view day.png'),
                                                  ),
                                                  Padding(
                                                      padding:
                                                      EdgeInsets.only(left: 10),

                                                      child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Text("Mã thiết bị",
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  color:
                                                                  Colors.grey,
                                                                  fontFamily:
                                                                  "Roboto")),
                                                          Text("asd1564ds15161dsada",
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  color:
                                                                  Colors.black,
                                                                  fontFamily:
                                                                  "Roboto")),
                                                        ],
                                                      ))
                                                ],
                                              ),
                                            ],
                                          ),)
                                      ],
                                    ),),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 00),
                                  child:InkWell(
                                    onTap: () async{
                                     await SharedPreferencesService.clear();
                                      Navigator.pushReplacement(
                                          context, MaterialPageRoute(builder: (context) => Login()));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width:
                                          20, // Set your desired width
                                          height:
                                          20, // Set your desired height
                                          child: Image.asset('assets/Logout.png'),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.only(left: 10),
                                          child: Text("Đăng xuất",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color:
                                                  Colors.black54,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily:
                                                  "Roboto")),)
                                      ],
                                    ),
                                  ),),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                );
              }
            }),
        onRefresh: _refreshData,
      ),
    );
  }
}
