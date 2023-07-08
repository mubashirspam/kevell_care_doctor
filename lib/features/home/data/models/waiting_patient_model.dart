// To parse this JSON data, do
//
//     final homeWaitingPatientModel = homeWaitingPatientModelFromJson(jsonString);

import 'dart:convert';

HomeWaitingPatientModel homeWaitingPatientModelFromJson(String str) => HomeWaitingPatientModel.fromJson(json.decode(str));

String homeWaitingPatientModelToJson(HomeWaitingPatientModel data) => json.encode(data.toJson());

class HomeWaitingPatientModel {
    bool? success;
    int? responsecode;
    String? message;
    List<dynamic>? data;

    HomeWaitingPatientModel({
        this.success,
        this.responsecode,
        this.message,
        this.data,
    });

    factory HomeWaitingPatientModel.fromJson(Map<String, dynamic> json) => HomeWaitingPatientModel(
        success: json["success"],
        responsecode: json["responsecode"],
        message: json["message"],
        data: json["data"] == null ? [] : List<dynamic>.from(json["data"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "responsecode": responsecode,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
    };
}
