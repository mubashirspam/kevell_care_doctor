// To parse this JSON data, do
//
//     final FailureModel = FailureModelFromJson(jsonString);

import 'dart:convert';

FailureModel failureModelFromJson(String str) => FailureModel.fromJson(json.decode(str));

String failureModelToJson(FailureModel data) => json.encode(data.toJson());

class FailureModel {
    int? responseCode;
    bool? status;
    String? message;

    FailureModel({
        this.responseCode,
        this.status,
        this.message,
    });

    factory FailureModel.fromJson(Map<String, dynamic> json) => FailureModel(
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
