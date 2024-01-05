// To parse this JSON data, do
//
//     final signupModel = signupModelFromJson(jsonString);

import 'dart:convert';

SignupModel signupModelFromJson(String str) => SignupModel.fromJson(json.decode(str));

String signupModelToJson(SignupModel data) => json.encode(data.toJson());

class SignupModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    SignupModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
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
    int? registeredUserId;
    String? name;
    String? mobileNo;
    String? emailId;
    String? gender;
    Address? address;
    String? specialist;
    String? location;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Data({
        this.registeredUserId,
        this.name,
        this.mobileNo,
        this.emailId,
        this.gender,
        this.address,
        this.specialist,
        this.location,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        registeredUserId: json["registeredUserId"],
        name: json["name"],
        mobileNo: json["mobile_no"],
        emailId: json["email_id"],
        gender: json["gender"],
        address: json["address"] == null ? null : Address.fromJson(json["address"]),
        specialist: json["specialist"],
        location: json["location"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "registeredUserId": registeredUserId,
        "name": name,
        "mobile_no": mobileNo,
        "email_id": emailId,
        "gender": gender,
        "address": address?.toJson(),
        "specialist": specialist,
        "location": location,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}

class Address {
    String? street;
    String? city;
    String? state;
    String? district;
    String? zipcode;

    Address({
        this.street,
        this.city,
        this.state,
        this.district,
        this.zipcode,
    });

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        city: json["city"],
        state: json["state"],
        district: json["district"],
        zipcode: json["zipcode"],
    );

    Map<String, dynamic> toJson() => {
        "street": street,
        "city": city,
        "state": state,
        "district": district,
        "zipcode": zipcode,
    };
}
