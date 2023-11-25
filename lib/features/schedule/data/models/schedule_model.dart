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
    List<Schedule>? todayschedule;
    List<Schedule>? upcomingschedule;

    Data({
        this.todayschedule,
        this.upcomingschedule,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        todayschedule: json["todayschedule"] == null ? [] : List<Schedule>.from(json["todayschedule"]!.map((x) => Schedule.fromJson(x))),
        upcomingschedule: json["upcomingschedule"] == null ? [] : List<Schedule>.from(json["upcomingschedule"]!.map((x) => Schedule.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "todayschedule": todayschedule == null ? [] : List<dynamic>.from(todayschedule!.map((x) => x.toJson())),
        "upcomingschedule": upcomingschedule == null ? [] : List<dynamic>.from(upcomingschedule!.map((x) => x.toJson())),
    };

  
}

class Schedule {
    int? id;
    int? doctorId;
    DateTime? starttime;
    DateTime? endtime;
    DateTime? startdate;
    DateTime? enddate;
    int? dailylimitcount;
    int? timeperPatient;
    String? type;
    String? month;
    String? year;
    DateTime? days;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Schedule({
        this.id,
        this.doctorId,
        this.starttime,
        this.endtime,
        this.startdate,
        this.enddate,
        this.dailylimitcount,
        this.timeperPatient,
        this.type,
        this.month,
        this.year,
        this.days,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        id: json["_id"],
        doctorId: json["doctor_id"],
        starttime: json["starttime"] == null ? null : DateTime.parse(json["starttime"]),
        endtime: json["endtime"] == null ? null : DateTime.parse(json["endtime"]),
        startdate: json["startdate"] == null ? null : DateTime.parse(json["startdate"]),
        enddate: json["enddate"] == null ? null : DateTime.parse(json["enddate"]),
        dailylimitcount: json["dailylimitcount"],
        timeperPatient: json["timeperPatient"],
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
        "starttime": starttime?.toIso8601String(),
        "endtime": endtime?.toIso8601String(),
        "startdate": "${startdate!.year.toString().padLeft(4, '0')}-${startdate!.month.toString().padLeft(2, '0')}-${startdate!.day.toString().padLeft(2, '0')}",
        "enddate": "${enddate!.year.toString().padLeft(4, '0')}-${enddate!.month.toString().padLeft(2, '0')}-${enddate!.day.toString().padLeft(2, '0')}",
        "dailylimitcount": dailylimitcount,
        "timeperPatient": timeperPatient,
        "type": type,
        "month": month,
        "year": year,
        "Days": "${days!.year.toString().padLeft(4, '0')}-${days!.month.toString().padLeft(2, '0')}-${days!.day.toString().padLeft(2, '0')}",
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
