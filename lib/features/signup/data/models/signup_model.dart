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
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Data({
        this.registeredUserId,
        this.name,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        registeredUserId: json["registeredUserId"],
        name: json["name"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "registeredUserId": registeredUserId,
        "name": name,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
