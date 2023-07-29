import 'package:flutter/material.dart';
import '../../ViewModel/LoginWidget/Login.dart';

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
