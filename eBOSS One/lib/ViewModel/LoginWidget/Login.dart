import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Model/Login/LoginResponseModel.dart';
import '../../Services/NetWork/NetWorkRequest.dart';
import '../HomeWidget/Home.dart';

class MailLogin extends StatefulWidget {
  MailLogin({
    super.key,
  });

  @override
  State<MailLogin> createState() => _MailLoginState();
}

class _MailLoginState extends State<MailLogin> {
  int checkLogin = 1;
  TextEditingController txtUser = TextEditingController();
  TextEditingController txtPassWord = TextEditingController();
  int check = 0;
  String logerror = "";
  void _LoginUser(BuildContext context) async {
    try {
      int check = 1;

      if(txtUser.text.isEmpty || txtPassWord.text.isEmpty)
        {
          logerror="Kiểm tra lại tài khoản hoặc mật khẩu!";
        }
      else
        {
          Map<String, dynamic> request = {
            "userName": txtUser.text,
            "password": txtPassWord.text
          };
          final response =
          await NetWorkRequest.post("/eBOSS/api/Login/Login", request);
          final listData = LoginResponseModel.fromJson(response);
          if (listData.data?.token != null) {
            check = 1;
          } else {
            check = 0;
            logerror="Sai tài khoản hoặc mật khẩu!";
          }
          //   Navigator.pushReplacement(
          //       context,
          //       MaterialPageRoute(builder: (context) => Home()));
          // };
          if (check == 1) {
            final SharedPreferences prefs = await SharedPreferences.getInstance();
            String? token = listData.data?.token;
            await prefs.setString("Token", token.toString());

            await Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Home()));
          }
        }
    } catch (e) {
      logerror = e.toString();
      check = -1;
    }
    setState(() {
      checkLogin = check;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image(
                    image: AssetImage("assets/lego_eboss.png"),
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: (checkLogin == 1)
                      ? Text("")
                      : MessageError(mess:logerror ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 350,
                      child: TextField(
                          controller: txtUser,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: "Tài khoảng",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none),
                              fillColor: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                              filled: true,
                              prefixIcon: Icon(Icons.person))),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 350,
                      child: TextField(
                        controller: txtPassWord,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "Mật khẩu",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor:
                                Theme.of(context).primaryColor.withOpacity(0.1),
                            filled: true,
                            prefixIcon: Icon(Icons.lock)),
                        obscureText: true,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    onPressed: () => _LoginUser(context),
                    child: Text("Đăng nhập"),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(vertical: 16)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text(
                      "eBOSS ONE ver 1.0",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Roboto",
                          fontSize: 13),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Center(
                    child: Text(
                      "Được phát triển bản quyền bởi eBOSS",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Roboto",
                          fontSize: 13),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: (checkLogin == -1)
                      ? MessageErrorCatch(
                          mess: logerror,
                        )
                      : Text(""),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MessageError extends StatelessWidget {
  const MessageError({super.key, required this.mess});
  final mess;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        mess,
        style: TextStyle(color: Colors.red, fontFamily: "Roboto", fontSize: 15),
      ),
    );
  }
}

class MessageErrorCatch extends StatelessWidget {
  const MessageErrorCatch({super.key, required this.mess});
  final mess;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Lỗi hệ thống!" + mess.toString(),
        style: TextStyle(color: Colors.orange, fontFamily: "Roboto", fontSize: 13, fontWeight: FontWeight.bold),
      ),
    );
  }
}
