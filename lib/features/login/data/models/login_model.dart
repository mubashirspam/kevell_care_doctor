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
    String? name;
    String? emailId;
    String? mobileNo;
    DateTime? dob;
    bool? doctorApproved;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? token;

    Datum({
        this.id,
        this.name,
        this.emailId,
        this.mobileNo,
        this.dob,
        this.doctorApproved,
        this.createdAt,
        this.updatedAt,
        this.token,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        name: json["name"],
        emailId: json["email_id"],
        mobileNo: json["mobile_no"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
        doctorApproved: json["doctor_approved"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email_id": emailId,
        "mobile_no": mobileNo,
        "dob": dob?.toIso8601String(),
        "doctor_approved": doctorApproved,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "token": token,
    };
}
