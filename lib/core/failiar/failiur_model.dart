// To parse this JSON data, do
//
//     final failuerModel = failuerModelFromJson(jsonString);

import 'dart:convert';

FailuerModel failuerModelFromJson(String str) => FailuerModel.fromJson(json.decode(str));

String failuerModelToJson(FailuerModel data) => json.encode(data.toJson());

class FailuerModel {
    int? responseCode;
    bool? status;
    String? message;

    FailuerModel({
        this.responseCode,
        this.status,
        this.message,
    });

    factory FailuerModel.fromJson(Map<String, dynamic> json) => FailuerModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "status": status,
        "message": message,
    };
}
