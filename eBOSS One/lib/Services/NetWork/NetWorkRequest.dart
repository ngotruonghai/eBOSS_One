import 'dart:convert';
import 'package:http/http.dart' as http;
import '../BaseServices/HostService.dart';
import '../BaseServices/SharedPreferencesService.dart';

class NetWorkRequest {
  static final timeout = Duration(seconds: 20);
  NetWorkRequest() {}

  static Future<Map<String, dynamic>> post(
      String endpoint, Map<String, dynamic> data) async {
    String url = HostService.Host_Mobile + endpoint;
    // Post API
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    ).timeout(Duration(seconds: 5));
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> PostJWT(
      String endpoint, Map<String, dynamic> data) async {
    String url = HostService.Host_Mobile + endpoint;
    // Post API
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'eBOSSONE': SharedPreferencesService.getString(KeyServices.KeyToken),
        'Content-Type': 'application/json',
      },
      body: jsonEncode(data),
    ).timeout(timeout);
    return _handleResponse(response);
  }
static Future<Map<String, dynamic>> GetJWT(String endpoint) async{
  String url = HostService.Host_Mobile + endpoint;
  final response = await http.get(
    Uri.parse(url),
    headers: {
      'eBOSSONE': SharedPreferencesService.getString(KeyServices.KeyToken),
      'Content-Type': 'application/json',
    },
  ).timeout(timeout);

  return _handleResponse(response);
}
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      // Trả về dữ liệu đã được giải mã từ JSON
      return json.decode(response.body);
    }  else {
      // Xử lý lỗi và thông báo cho phía gọi
      throw Exception('${response.statusCode.toString()}');
    }
  }
}
