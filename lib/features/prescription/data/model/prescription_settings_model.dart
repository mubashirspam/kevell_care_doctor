// To parse this JSON data, do
//
//     final prescriptionSettingsModel = prescriptionSettingsModelFromJson(jsonString);

import 'dart:convert';

PrescriptionSettingsModel prescriptionSettingsModelFromJson(String str) => PrescriptionSettingsModel.fromJson(json.decode(str));

String prescriptionSettingsModelToJson(PrescriptionSettingsModel data) => json.encode(data.toJson());

class PrescriptionSettingsModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    PrescriptionSettingsModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory PrescriptionSettingsModel.fromJson(Map<String, dynamic> json) => PrescriptionSettingsModel(
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
    List<String>? type;
    List<String>? timeoftheday;
    List<String>? tobetaken;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Data({
        this.type,
        this.timeoftheday,
        this.tobetaken,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        type: json["type"] == null ? [] : List<String>.from(json["type"]!.map((x) => x)),
        timeoftheday: json["timeoftheday"] == null ? [] : List<String>.from(json["timeoftheday"]!.map((x) => x)),
        tobetaken: json["tobetaken"] == null ? [] : List<String>.from(json["tobetaken"]!.map((x) => x)),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "type": type == null ? [] : List<dynamic>.from(type!.map((x) => x)),
        "timeoftheday": timeoftheday == null ? [] : List<dynamic>.from(timeoftheday!.map((x) => x)),
        "tobetaken": tobetaken == null ? [] : List<dynamic>.from(tobetaken!.map((x) => x)),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
