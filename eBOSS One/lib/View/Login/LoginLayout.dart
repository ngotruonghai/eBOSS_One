import 'package:eboss_one/ViewModel/HomeWidget/Home.dart';
import 'package:flutter/material.dart';
class Login extends StatelessWidget {
   Login({
    super.key,
  });
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: MailLogin(),
        ));
  }
}
class MailLogin extends StatelessWidget {
  const MailLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child:Padding(
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
                      child: Container(
                        width: 350,
                        child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: "Tài khoảng",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide.none
                                ),
                                fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                                filled: true,
                                prefixIcon: Icon(Icons.person))
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 350,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: "Mật khẩu",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none
                              ),
                              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                              filled: true,
                              prefixIcon: Icon(Icons.lock)),
                          obscureText: true,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text("Đăng nhập"),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(vertical: 16)
                      ),
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
                          fontSize: 13
                        ),
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
                            fontSize: 13
                        ),
                      ),
                    ),
                  )
                ],
              ),
          ),
        ),
      ),
    );
  }
}
