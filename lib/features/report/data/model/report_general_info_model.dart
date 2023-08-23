// To parse this JSON data, do
//
//     final reportGeneraInfoModel = reportGeneraInfoModelFromJson(jsonString);

import 'dart:convert';

ReportGeneraInfoModel reportGeneraInfoModelFromJson(String str) => ReportGeneraInfoModel.fromJson(json.decode(str));

String reportGeneraInfoModelToJson(ReportGeneraInfoModel data) => json.encode(data.toJson());

class ReportGeneraInfoModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    ReportGeneraInfoModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory ReportGeneraInfoModel.fromJson(Map<String, dynamic> json) => ReportGeneraInfoModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "status": status,
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    int? id;
    String? username;
    String? mobile;
    String? address;
    DateTime? startdate;
    DateTime? enddate;
    DateTime? dob;

    Data({
        this.id,
        this.username,
        this.mobile,
        this.address,
        this.startdate,
        this.enddate,
        this.dob,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        username: json["Username"],
        mobile: json["mobile"],
        address: json["Address"],
        startdate: json["startdate"] == null ? null : DateTime.parse(json["startdate"]),
        enddate: json["enddate"] == null ? null : DateTime.parse(json["enddate"]),
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "Username": username,
        "mobile": mobile,
        "Address": address,
        "startdate": "${startdate!.year.toString().padLeft(4, '0')}-${startdate!.month.toString().padLeft(2, '0')}-${startdate!.day.toString().padLeft(2, '0')}",
        "enddate": "${enddate!.year.toString().padLeft(4, '0')}-${enddate!.month.toString().padLeft(2, '0')}-${enddate!.day.toString().padLeft(2, '0')}",
        "dob": "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
    };
}
