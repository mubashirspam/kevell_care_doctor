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

    ScheduleModel copyWith({
        int? responseCode,
        bool? status,
        String? message,
        Data? data,
    }) => 
        ScheduleModel(
            responseCode: responseCode ?? this.responseCode,
            status: status ?? this.status,
            message: message ?? this.message,
            data: data ?? this.data,
        );

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
    List<Schedule>? approve;
    List<Schedule>? notapprove;

    Data({
        this.approve,
        this.notapprove,
    });

    Data copyWith({
        List<Schedule>? approve,
        List<Schedule>? notapprove,
    }) => 
        Data(
            approve: approve ?? this.approve,
            notapprove: notapprove ?? this.notapprove,
        );

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        approve: json["approve"] == null ? [] : List<Schedule>.from(json["approve"]!.map((x) => Schedule.fromJson(x))),
        notapprove: json["notapprove"] == null ? [] : List<Schedule>.from(json["notapprove"]!.map((x) => Schedule.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "approve": approve == null ? [] : List<dynamic>.from(approve!.map((x) => x.toJson())),
        "notapprove": notapprove == null ? [] : List<dynamic>.from(notapprove!.map((x) => x.toJson())),
    };
}

class Schedule {
    int? id;
    int? doctorId;
    DateTime? startDate;
    DateTime? endDate;
    int? dailyLimitCount;
    int? timePerPatient;
    String? type;
    String? month;
    String? year;
    DateTime? days;
    String? startTime;
    String? endTime;
    List<Bookedappointmentdetail>? bookedappointmentdetails;
    String? location;

    Schedule({
        this.id,
        this.doctorId,
        this.startDate,
        this.endDate,
        this.dailyLimitCount,
        this.timePerPatient,
        this.type,
        this.month,
        this.year,
        this.days,
        this.startTime,
        this.endTime,
        this.bookedappointmentdetails,
        this.location,
    });

    Schedule copyWith({
        int? id,
        int? doctorId,
        DateTime? startDate,
        DateTime? endDate,
        int? dailyLimitCount,
        int? timePerPatient,
        String? type,
        String? month,
        String? year,
        DateTime? days,
        String? startTime,
        String? endTime,
        List<Bookedappointmentdetail>? bookedappointmentdetails,
        String? location,
    }) => 
        Schedule(
            id: id ?? this.id,
            doctorId: doctorId ?? this.doctorId,
            startDate: startDate ?? this.startDate,
            endDate: endDate ?? this.endDate,
            dailyLimitCount: dailyLimitCount ?? this.dailyLimitCount,
            timePerPatient: timePerPatient ?? this.timePerPatient,
            type: type ?? this.type,
            month: month ?? this.month,
            year: year ?? this.year,
            days: days ?? this.days,
            startTime: startTime ?? this.startTime,
            endTime: endTime ?? this.endTime,
            bookedappointmentdetails: bookedappointmentdetails ?? this.bookedappointmentdetails,
            location: location ?? this.location,
        );

    factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        id: json["_id"],
        doctorId: json["doctor_id"],
        startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
        endDate: json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        dailyLimitCount: json["daily_limit_count"],
        timePerPatient: json["time_per_patient"],
        type: json["type"],
        month: json["month"],
        year: json["year"],
        days: json["days"] == null ? null : DateTime.parse(json["days"]),
        startTime: json["start_time"],
        endTime: json["end_time"],
        bookedappointmentdetails: json["bookedappointmentdetails"] == null ? [] : List<Bookedappointmentdetail>.from(json["bookedappointmentdetails"]!.map((x) => Bookedappointmentdetail.fromJson(x))),
        location: json["location"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "doctor_id": doctorId,
        "start_date": "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        "end_date": "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
        "daily_limit_count": dailyLimitCount,
        "time_per_patient": timePerPatient,
        "type": type,
        "month": month,
        "year": year,
        "days": "${days!.year.toString().padLeft(4, '0')}-${days!.month.toString().padLeft(2, '0')}-${days!.day.toString().padLeft(2, '0')}",
        "start_time": startTime,
        "end_time": endTime,
        "bookedappointmentdetails": bookedappointmentdetails == null ? [] : List<dynamic>.from(bookedappointmentdetails!.map((x) => x.toJson())),
        "location": location,
    };
}

class Bookedappointmentdetail {
    int? id;
    int? patientId;
    String? patientname;
    int? apptToken;

    Bookedappointmentdetail({
        this.id,
        this.patientId,
        this.patientname,
        this.apptToken,
    });

    Bookedappointmentdetail copyWith({
        int? id,
        int? patientId,
        String? patientname,
        int? apptToken,
    }) => 
        Bookedappointmentdetail(
            id: id ?? this.id,
            patientId: patientId ?? this.patientId,
            patientname: patientname ?? this.patientname,
            apptToken: apptToken ?? this.apptToken,
        );

    factory Bookedappointmentdetail.fromJson(Map<String, dynamic> json) => Bookedappointmentdetail(
        id: json["_id"],
        patientId: json["patient_id"],
        patientname: json["patientname"],
        apptToken: json["appt_token"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "patient_id": patientId,
        "patientname": patientname,
        "appt_token": apptToken,
    };
}
