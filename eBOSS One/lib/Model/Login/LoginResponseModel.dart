class LoginResponseModel {
  int? statusCode;
  String? description;
  Data? data;

  LoginResponseModel({this.statusCode, this.description, this.data});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    description = json['description'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['description'] = this.description;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? token;
  String? message;
  String? userID;
  String? userName;

  Data({this.token, this.message, this.userID, this.userName});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    message = json['message'];
    userID = json['userID'];
    userName = json['userName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['message'] = this.message;
    data['userID'] = this.userID;
    data['userName'] = this.userName;
    return data;
  }
}
