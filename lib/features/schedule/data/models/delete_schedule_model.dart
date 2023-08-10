// To parse this JSON data, do
//
//     final deleteScheduleModel = deleteScheduleModelFromJson(jsonString);

import 'dart:convert';

DeleteScheduleModel deleteScheduleModelFromJson(String str) => DeleteScheduleModel.fromJson(json.decode(str));

String deleteScheduleModelToJson(DeleteScheduleModel data) => json.encode(data.toJson());

class DeleteScheduleModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    DeleteScheduleModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory DeleteScheduleModel.fromJson(Map<String, dynamic> json) => DeleteScheduleModel(
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
    Deleteshedule? deleteshedule;

    Data({
        this.deleteshedule,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        deleteshedule: json["deleteshedule"] == null ? null : Deleteshedule.fromJson(json["deleteshedule"]),
    );

    Map<String, dynamic> toJson() => {
        "deleteshedule": deleteshedule?.toJson(),
    };
}

class Deleteshedule {
    int? id;
    String? doctorId;
    DateTime? startdate;
    DateTime? enddate;
    String? dailylimitcount;
    String? type;
    String? month;
    String? year;
    DateTime? days;
    String? starttime;
    String? endtime;
    int? timeperPatient;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Deleteshedule({
        this.id,
        this.doctorId,
        this.startdate,
        this.enddate,
        this.dailylimitcount,
        this.type,
        this.month,
        this.year,
        this.days,
        this.starttime,
        this.endtime,
        this.timeperPatient,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Deleteshedule.fromJson(Map<String, dynamic> json) => Deleteshedule(
        id: json["_id"],
        doctorId: json["doctor_id"],
        startdate: json["startdate"] == null ? null : DateTime.parse(json["startdate"]),
        enddate: json["enddate"] == null ? null : DateTime.parse(json["enddate"]),
        dailylimitcount: json["dailylimitcount"],
        type: json["type"],
        month: json["month"],
        year: json["year"],
        days: json["Days"] == null ? null : DateTime.parse(json["Days"]),
        starttime: json["starttime"],
        endtime: json["endtime"],
        timeperPatient: json["timeperPatient"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "doctor_id": doctorId,
        "startdate": "${startdate!.year.toString().padLeft(4, '0')}-${startdate!.month.toString().padLeft(2, '0')}-${startdate!.day.toString().padLeft(2, '0')}",
        "enddate": "${enddate!.year.toString().padLeft(4, '0')}-${enddate!.month.toString().padLeft(2, '0')}-${enddate!.day.toString().padLeft(2, '0')}",
        "dailylimitcount": dailylimitcount,
        "type": type,
        "month": month,
        "year": year,
        "Days": "${days!.year.toString().padLeft(4, '0')}-${days!.month.toString().padLeft(2, '0')}-${days!.day.toString().padLeft(2, '0')}",
        "starttime": starttime,
        "endtime": endtime,
        "timeperPatient": timeperPatient,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
