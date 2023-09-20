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
    String? name;
    String? emailid;
    String? token;

    Data({
        this.id,
        this.name,
        this.emailid,
        this.token,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["Id"],
        name: json["name"],
        emailid: json["Emailid"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "name": name,
        "Emailid": emailid,
        "token": token,
    };
}
