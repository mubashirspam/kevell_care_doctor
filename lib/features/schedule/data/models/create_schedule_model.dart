// To parse this JSON data, do
//
//     final createScheduleModel = createScheduleModelFromJson(jsonString);

import 'dart:convert';

CreateScheduleModel createScheduleModelFromJson(String str) => CreateScheduleModel.fromJson(json.decode(str));

String createScheduleModelToJson(CreateScheduleModel data) => json.encode(data.toJson());

class CreateScheduleModel {
    bool? status;
    int? responsecode;
    String? message;
    Data? data;

    CreateScheduleModel({
        this.status,
        this.responsecode,
        this.message,
        this.data,
    });

    factory CreateScheduleModel.fromJson(Map<String, dynamic> json) => CreateScheduleModel(
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
    String? doctorId;
    String? duration;
    DateTime? startdate;
    DateTime? enddate;
    String? dailylimitcount;
    String? type;
    String? month;
    String? year;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? id;
    int? v;

    Data({
        this.doctorId,
        this.duration,
        this.startdate,
        this.enddate,
        this.dailylimitcount,
        this.type,
        this.month,
        this.year,
        this.createdAt,
        this.updatedAt,
        this.id,
        this.v,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        doctorId: json["doctor_id"],
        duration: json["duration"],
        startdate: json["startdate"] == null ? null : DateTime.parse(json["startdate"]),
        enddate: json["enddate"] == null ? null : DateTime.parse(json["enddate"]),
        dailylimitcount: json["dailylimitcount"],
        type: json["type"],
        month: json["month"],
        year: json["year"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        id: json["_id"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "doctor_id": doctorId,
        "duration": duration,
        "startdate": "${startdate!.year.toString().padLeft(4, '0')}-${startdate!.month.toString().padLeft(2, '0')}-${startdate!.day.toString().padLeft(2, '0')}",
        "enddate": "${enddate!.year.toString().padLeft(4, '0')}-${enddate!.month.toString().padLeft(2, '0')}-${enddate!.day.toString().padLeft(2, '0')}",
        "dailylimitcount": dailylimitcount,
        "type": type,
        "month": month,
        "year": year,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "_id": id,
        "__v": v,
    };
}
