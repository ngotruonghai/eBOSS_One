class DataMissionUnFinishModel {
  int? statusCode;
  String? description;
  List<Data>? data;

  DataMissionUnFinishModel({this.statusCode, this.description, this.data});

  DataMissionUnFinishModel.fromJson(Map<String, dynamic> json) {
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
  String? workAID;
  String? recordDate;
  Null? recordWorkAllSummaryDate;
  String? workAllSummary;
  String? employeeName;
  String? planStartDate;
  String? consumptionTime;
  String? processWeight;
  String? preFinishDate;

  Data(
      {this.workAID,
        this.recordDate,
        this.recordWorkAllSummaryDate,
        this.workAllSummary,
        this.employeeName,
        this.planStartDate,
        this.consumptionTime,
        this.processWeight,
        this.preFinishDate});

  Data.fromJson(Map<String, dynamic> json) {
    workAID = json['workAID'];
    recordDate = json['recordDate'];
    recordWorkAllSummaryDate = json['recordWorkAllSummaryDate'];
    workAllSummary = json['workAllSummary'];
    employeeName = json['employeeName'];
    planStartDate = json['planStartDate'];
    consumptionTime = json['consumptionTime'];
    processWeight = json['processWeight'];
    preFinishDate = json['preFinishDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['workAID'] = this.workAID;
    data['recordDate'] = this.recordDate;
    data['recordWorkAllSummaryDate'] = this.recordWorkAllSummaryDate;
    data['workAllSummary'] = this.workAllSummary;
    data['employeeName'] = this.employeeName;
    data['planStartDate'] = this.planStartDate;
    data['consumptionTime'] = this.consumptionTime;
    data['processWeight'] = this.processWeight;
    data['preFinishDate'] = this.preFinishDate;
    return data;
  }
}
