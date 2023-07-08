// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  bool? success;
  List<Result>? result;

  ProfileModel({
    this.success,
    this.result,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        success: json["success"],
        result: json["result"] == null
            ? []
            : List<Result>.from(json["result"]!.map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "result": result == null
            ? []
            : List<dynamic>.from(result!.map((x) => x.toJson())),
      };
}

class Result {
  String? username;
  String? address;
  String? emailid;
  String? mobileNo;
  DateTime? dob;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Result({
    this.username,
    this.emailid,
    this.mobileNo,
    this.dob,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.address,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        username: json["username"],
        address: json["address"],
        emailid: json["Emailid"],
        mobileNo: json["MobileNo"],
        dob: json["DOB"] == null ? null : DateTime.parse(json["DOB"]),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "address": address,
        "Emailid": emailid,
        "MobileNo": mobileNo,
        "DOB": dob?.toIso8601String(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}
