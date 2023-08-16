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
    Data? data;

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
    int? id;
    String? emailid;
    dynamic password;
    dynamic userType;
    String? token;

    Data({
        this.id,
        this.emailid,
        this.password,
        this.userType,
        this.token,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["Id"],
        emailid: json["Emailid"],
        password: json["Password"],
        userType: json["UserType"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "Emailid": emailid,
        "Password": password,
        "UserType": userType,
        "token": token,
    };
}
