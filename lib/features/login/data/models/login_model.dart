// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    bool? status;
    int? responsecode;
    String? message;
    List<Datum>? data;

    LoginModel({
        this.status,
        this.responsecode,
        this.message,
        this.data,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"],
        responsecode: json["responsecode"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "responsecode": responsecode,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    int? id;
    String? username;
    String? emailid;
    String? mobileNo;
    DateTime? dob;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? token;
    String? otp;

    Datum({
        this.id,
        this.username,
        this.emailid,
        this.mobileNo,
        this.dob,
        this.createdAt,
        this.updatedAt,
        this.token,
        this.otp,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        username: json["username"],
        emailid: json["Emailid"],
        mobileNo: json["MobileNo"],
        dob: json["DOB"] == null ? null : DateTime.parse(json["DOB"]),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        token: json["token"],
        otp: json["otp"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "username": username,
        "Emailid": emailid,
        "MobileNo": mobileNo,
        "DOB": dob?.toIso8601String(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "token": token,
        "otp": otp,
    };
}
