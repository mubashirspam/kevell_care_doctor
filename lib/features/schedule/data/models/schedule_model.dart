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
    List<Hedule>? todyaShedule;
    List<Hedule>? upcomingSchedule;

    Data({
        this.todyaShedule,
        this.upcomingSchedule,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        todyaShedule: json["todya_shedule"] == null ? [] : List<Hedule>.from(json["todya_shedule"]!.map((x) => Hedule.fromJson(x))),
        upcomingSchedule: json["upcoming_schedule"] == null ? [] : List<Hedule>.from(json["upcoming_schedule"]!.map((x) => Hedule.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "todya_shedule": todyaShedule == null ? [] : List<dynamic>.from(todyaShedule!.map((x) => x.toJson())),
        "upcoming_schedule": upcomingSchedule == null ? [] : List<dynamic>.from(upcomingSchedule!.map((x) => x.toJson())),
    };
}

class Hedule {
    String? scheduleId;
    int? doctorId;
    String? type;
    String? duration;
    DateTime? date;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Hedule({
        this.scheduleId,
        this.doctorId,
        this.type,
        this.duration,
        this.date,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Hedule.fromJson(Map<String, dynamic> json) => Hedule(
        scheduleId: json["Schedule_id"],
        doctorId: json["doctor_id"],
        type: json["type"],
        duration: json["duration"],
        date: json["Date"] == null ? null : DateTime.parse(json["Date"]),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "Schedule_id": scheduleId,
        "doctor_id": doctorId,
        "type": type,
        "duration": duration,
        "Date": date?.toIso8601String(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
