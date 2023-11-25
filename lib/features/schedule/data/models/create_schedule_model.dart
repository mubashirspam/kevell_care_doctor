// To parse this JSON data, do
//
//     final createScheduleModel = createScheduleModelFromJson(jsonString);

import 'dart:convert';

CreateScheduleModel createScheduleModelFromJson(String str) => CreateScheduleModel.fromJson(json.decode(str));

String createScheduleModelToJson(CreateScheduleModel data) => json.encode(data.toJson());

class CreateScheduleModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    CreateScheduleModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory CreateScheduleModel.fromJson(Map<String, dynamic> json) => CreateScheduleModel(
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
    List<Result1>? result1;

    Data({
        this.result1,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        result1: json["result1"] == null ? [] : List<Result1>.from(json["result1"]!.map((x) => Result1.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "result1": result1 == null ? [] : List<dynamic>.from(result1!.map((x) => x.toJson())),
    };
}

class Result1 {
    int? doctorId;
    DateTime? startdate;
    DateTime? enddate;
    int? dailylimitcount;
    String? type;
    int? month;
    int? year;
    DateTime? days;
    bool? isScheduleApproved;
    DateTime? starttime;
    DateTime? endtime;
    int? timeperPatient;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? id;
    int? v;

    Result1({
        this.doctorId,
        this.startdate,
        this.enddate,
        this.dailylimitcount,
        this.type,
        this.month,
        this.year,
        this.days,
        this.isScheduleApproved,
        this.starttime,
        this.endtime,
        this.timeperPatient,
        this.createdAt,
        this.updatedAt,
        this.id,
        this.v,
    });

    factory Result1.fromJson(Map<String, dynamic> json) => Result1(
        doctorId: json["doctor_id"],
        startdate: json["startdate"] == null ? null : DateTime.parse(json["startdate"]),
        enddate: json["enddate"] == null ? null : DateTime.parse(json["enddate"]),
        dailylimitcount: json["dailylimitcount"],
        type: json["type"],
        month: json["month"],
        year: json["year"],
        days: json["Days"] == null ? null : DateTime.parse(json["Days"]),
        isScheduleApproved: json["is_schedule_approved"],
        starttime: json["starttime"] == null ? null : DateTime.parse(json["starttime"]),
        endtime: json["endtime"] == null ? null : DateTime.parse(json["endtime"]),
        timeperPatient: json["timeperPatient"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        id: json["_id"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "doctor_id": doctorId,
        "startdate": "${startdate!.year.toString().padLeft(4, '0')}-${startdate!.month.toString().padLeft(2, '0')}-${startdate!.day.toString().padLeft(2, '0')}",
        "enddate": "${enddate!.year.toString().padLeft(4, '0')}-${enddate!.month.toString().padLeft(2, '0')}-${enddate!.day.toString().padLeft(2, '0')}",
        "dailylimitcount": dailylimitcount,
        "type": type,
        "month": month,
        "year": year,
        "Days": "${days!.year.toString().padLeft(4, '0')}-${days!.month.toString().padLeft(2, '0')}-${days!.day.toString().padLeft(2, '0')}",
        "is_schedule_approved": isScheduleApproved,
        "starttime": starttime?.toIso8601String(),
        "endtime": endtime?.toIso8601String(),
        "timeperPatient": timeperPatient,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "_id": id,
        "__v": v,
    };
}
