import 'package:flutter/foundation.dart';

class Auth with ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  void login() {
    // Thực hiện xử lý đăng nhập ở đây
    _isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    // Thực hiện xử lý đăng xuất ở đây
    _isLoggedIn = false;
    notifyListeners();
  }
}
