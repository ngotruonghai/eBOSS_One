class UserInfoModel {
  int? statusCode;
  String? description;
  List<Data>? data;

  UserInfoModel({this.statusCode, this.description, this.data});

  UserInfoModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    description = json['description'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['description'] = this.description;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? employeeID;
  String? userID;
  String? fullName;
  String? birthDate;
  String? addressResident;
  String? address;
  String? mobile;
  String? employeeCode;
  String? emailFordward;
  String? emailPersonnal;
  String? insuranceCompanyID;

  Data(
      {this.employeeID,
        this.userID,
        this.fullName,
        this.birthDate,
        this.addressResident,
        this.address,
        this.mobile,
        this.employeeCode,
        this.emailFordward,
        this.emailPersonnal,
        this.insuranceCompanyID});

  Data.fromJson(Map<String, dynamic> json) {
    employeeID = json['employeeID'];
    userID = json['userID'];
    fullName = json['fullName'];
    birthDate = json['birthDate'];
    addressResident = json['addressResident'];
    address = json['address'];
    mobile = json['mobile'];
    employeeCode = json['employeeCode'];
    emailFordward = json['emailFordward'];
    emailPersonnal = json['emailPersonnal'];
    insuranceCompanyID = json['insuranceCompanyID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['employeeID'] = this.employeeID;
    data['userID'] = this.userID;
    data['fullName'] = this.fullName;
    data['birthDate'] = this.birthDate;
    data['addressResident'] = this.addressResident;
    data['address'] = this.address;
    data['mobile'] = this.mobile;
    data['employeeCode'] = this.employeeCode;
    data['emailFordward'] = this.emailFordward;
    data['emailPersonnal'] = this.emailPersonnal;
    data['insuranceCompanyID'] = this.insuranceCompanyID;
    return data;
  }
}
