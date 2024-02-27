// To parse this JSON data, do
//
//     final historyPatientListModel = historyPatientListModelFromJson(jsonString);

import 'dart:convert';

HistoryPatientListModel historyPatientListModelFromJson(String str) => HistoryPatientListModel.fromJson(json.decode(str));

String historyPatientListModelToJson(HistoryPatientListModel data) => json.encode(data.toJson());

class HistoryPatientListModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    HistoryPatientListModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory HistoryPatientListModel.fromJson(Map<String, dynamic> json) => HistoryPatientListModel(
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
    int? totalCount;
    DateTime? startDate;
    int? allCount;
    int? todayCount;
    int? monthCount;
    int? weekCount;
    List<Patient>? patients;

    Data({
        this.totalCount,
        this.startDate,
        this.allCount,
        this.todayCount,
        this.monthCount,
        this.weekCount,
        this.patients,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalCount: json["total_Count"],
        startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
        allCount: json["all_count"],
        todayCount: json["today_count"],
        monthCount: json["month_count"],
        weekCount: json["week_count"],
        patients: json["patients"] == null ? [] : List<Patient>.from(json["patients"]!.map((x) => Patient.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "total_Count": totalCount,
        "start_date": "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        "all_count": allCount,
        "today_count": todayCount,
        "month_count": monthCount,
        "week_count": weekCount,
        "patients": patients == null ? [] : List<dynamic>.from(patients!.map((x) => x.toJson())),
    };
}

class Patient {
    int? patientId;
    String? name;
    DateTime? appointmentDate;
    DateTime? appointmentStarttime;
    DateTime? appointmentEndtime;
    int? doctorId;
    int? appointmentno;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Patient({
        this.patientId,
        this.name,
        this.appointmentDate,
        this.appointmentStarttime,
        this.appointmentEndtime,
        this.doctorId,
        this.appointmentno,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Patient.fromJson(Map<String, dynamic> json) => Patient(
        patientId: json["patient_id"],
        name: json["name"],
        appointmentDate: json["appointment_date"] == null ? null : DateTime.parse(json["appointment_date"]),
        appointmentStarttime: json["appointment_starttime"] == null ? null : DateTime.parse(json["appointment_starttime"]),
        appointmentEndtime: json["appointment_endtime"] == null ? null : DateTime.parse(json["appointment_endtime"]),
        doctorId: json["doctor_id"],
        appointmentno: json["appointmentno"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "patient_id": patientId,
        "name": name,
        "appointment_date": "${appointmentDate!.year.toString().padLeft(4, '0')}-${appointmentDate!.month.toString().padLeft(2, '0')}-${appointmentDate!.day.toString().padLeft(2, '0')}",
        "appointment_starttime": appointmentStarttime?.toIso8601String(),
        "appointment_endtime": appointmentEndtime?.toIso8601String(),
        "doctor_id": doctorId,
        "appointmentno": appointmentno,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
