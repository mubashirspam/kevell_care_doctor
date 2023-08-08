// To parse this JSON data, do
//
//     final scheduleModel = scheduleModelFromJson(jsonString);

import 'dart:convert';

ScheduleModel scheduleModelFromJson(String str) => ScheduleModel.fromJson(json.decode(str));

String scheduleModelToJson(ScheduleModel data) => json.encode(data.toJson());

class ScheduleModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    ScheduleModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory ScheduleModel.fromJson(Map<String, dynamic> json) => ScheduleModel(
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
    List<dynamic>? todayschedule;
    List<Upcomingschedule>? upcomingschedule;

    Data({
        this.todayschedule,
        this.upcomingschedule,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        todayschedule: json["todayschedule"] == null ? [] : List<dynamic>.from(json["todayschedule"]!.map((x) => x)),
        upcomingschedule: json["upcomingschedule"] == null ? [] : List<Upcomingschedule>.from(json["upcomingschedule"]!.map((x) => Upcomingschedule.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "todayschedule": todayschedule == null ? [] : List<dynamic>.from(todayschedule!.map((x) => x)),
        "upcomingschedule": upcomingschedule == null ? [] : List<dynamic>.from(upcomingschedule!.map((x) => x.toJson())),
    };
}

class Upcomingschedule {
    int? id;
    String? doctorId;
    String? starttime;
    String? endtime;
    DateTime? startdate;
    DateTime? enddate;
    String? dailylimitcount;
    String? type;
    String? month;
    String? year;
    DateTime? days;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Upcomingschedule({
        this.id,
        this.doctorId,
        this.starttime,
        this.endtime,
        this.startdate,
        this.enddate,
        this.dailylimitcount,
        this.type,
        this.month,
        this.year,
        this.days,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Upcomingschedule.fromJson(Map<String, dynamic> json) => Upcomingschedule(
        id: json["_id"],
        doctorId: json["doctor_id"],
        starttime: json["starttime"],
        endtime: json["endtime"],
        startdate: json["startdate"] == null ? null : DateTime.parse(json["startdate"]),
        enddate: json["enddate"] == null ? null : DateTime.parse(json["enddate"]),
        dailylimitcount: json["dailylimitcount"],
        type: json["type"],
        month: json["month"],
        year: json["year"],
        days: json["Days"] == null ? null : DateTime.parse(json["Days"]),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "doctor_id": doctorId,
        "starttime": starttime,
        "endtime": endtime,
        "startdate": "${startdate!.year.toString().padLeft(4, '0')}-${startdate!.month.toString().padLeft(2, '0')}-${startdate!.day.toString().padLeft(2, '0')}",
        "enddate": "${enddate!.year.toString().padLeft(4, '0')}-${enddate!.month.toString().padLeft(2, '0')}-${enddate!.day.toString().padLeft(2, '0')}",
        "dailylimitcount": dailylimitcount,
        "type": type,
        "month": month,
        "year": year,
        "Days": "${days!.year.toString().padLeft(4, '0')}-${days!.month.toString().padLeft(2, '0')}-${days!.day.toString().padLeft(2, '0')}",
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
