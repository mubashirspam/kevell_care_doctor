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
    String? profileImagelink;
    String? name;
    String? mobileNo;
    Address? address;

    Data({
        this.id,
        this.profileImagelink,
        this.name,
        this.mobileNo,
        this.address,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        profileImagelink: json["profile_imagelink"],
        name: json["name"],
        mobileNo: json["mobile_no"],
        address: json["address"] == null ? null : Address.fromJson(json["address"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "profile_imagelink": profileImagelink,
        "name": name,
        "mobile_no": mobileNo,
        "address": address?.toJson(),
    };
}

class Address {
    String? street;
    String? city;
    String? state;
    String? zipCode;
    String? district;

    Address({
        this.street,
        this.city,
        this.state,
        this.zipCode,
        this.district,
    });

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        city: json["city"],
        state: json["state"],
        zipCode: json["zipCode"],
        district: json["district"],
    );

    Map<String, dynamic> toJson() => {
        "street": street,
        "city": city,
        "state": state,
        "zipCode": zipCode,
        "district": district,
    };
}
