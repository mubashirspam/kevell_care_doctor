// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  bool? status;
  int? responsecode;
  String? message;
  Data? data;

  ProfileModel({
    this.status,
    this.responsecode,
    this.message,
    this.data,
  });

  ProfileModel copyWith({
    bool? status,
    int? responsecode,
    String? message,
    Data? data,
  }) =>
      ProfileModel(
        status: status ?? this.status,
        responsecode: responsecode ?? this.responsecode,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        status: json["status"],
        responsecode: json["responsecode"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "responsecode": responsecode,
        "message": message,
        "data": data?.toJson(),
      };
}

class Data {
  int? registeredUserId;
  String? name;
  String? email;
  String? mobileNo;
  DateTime? dob;
  String? address;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Data({
    this.registeredUserId,
    this.name,
    this.email,
    this.mobileNo,
    this.dob,
    this.address,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  Data copyWith({
    int? registeredUserId,
    String? name,
    String? email,
    String? mobileNo,
    DateTime? dob,
    String? address,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) =>
      Data(
        registeredUserId: registeredUserId ?? this.registeredUserId,
        name: name ?? this.name,
        email: email ?? this.email,
        mobileNo: mobileNo ?? this.mobileNo,
        dob: dob ?? this.dob,
        address: address ?? this.address,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        registeredUserId: json["registeredUserId"],
        name: json["name"],
        email: json["email"],
        mobileNo: json["MobileNo"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
        address: json["address"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "id": registeredUserId,
        "username": name,
        if (email != null) "email": email,
        "mobile": mobileNo,
        if (dob != null) "dob": dob?.toIso8601String(),
        "address": address,
        if (createdAt != null) "createdAt": createdAt?.toIso8601String(),
        if (updatedAt != null) "updatedAt": updatedAt?.toIso8601String(),
        if (v != null) "__v": v,
      };
}
