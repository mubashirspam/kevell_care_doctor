// To parse this JSON data, do
//
//     final endAppoinmentModel = endAppoinmentModelFromJson(jsonString);

import 'dart:convert';

EndAppoinmentModel endAppoinmentModelFromJson(String str) => EndAppoinmentModel.fromJson(json.decode(str));

String endAppoinmentModelToJson(EndAppoinmentModel data) => json.encode(data.toJson());

class EndAppoinmentModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    EndAppoinmentModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory EndAppoinmentModel.fromJson(Map<String, dynamic> json) => EndAppoinmentModel(
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
    int? id;
    int? patientId;
    String? patientname;
    DateTime? appointmentstarttime;
    DateTime? appointmentendtime;
    int? doctorid;
    String? doctorname;
    DateTime? appointmentdate;
    String? date;
    String? userdoctorcommand;
    int? userdoctorrating;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? sno;
    int? v;
    List<dynamic>? prescription;
    bool? isTimeup;
    bool? isvisited;
    CheckupResult? checkupResult;

    Data({
        this.id,
        this.patientId,
        this.patientname,
        this.appointmentstarttime,
        this.appointmentendtime,
        this.doctorid,
        this.doctorname,
        this.appointmentdate,
        this.date,
        this.userdoctorcommand,
        this.userdoctorrating,
        this.createdAt,
        this.updatedAt,
        this.sno,
        this.v,
        this.prescription,
        this.isTimeup,
        this.isvisited,
        this.checkupResult,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        patientId: json["patientId"],
        patientname: json["patientname"],
        appointmentstarttime: json["appointmentstarttime"] == null ? null : DateTime.parse(json["appointmentstarttime"]),
        appointmentendtime: json["appointmentendtime"] == null ? null : DateTime.parse(json["appointmentendtime"]),
        doctorid: json["doctorid"],
        doctorname: json["doctorname"],
        appointmentdate: json["appointmentdate"] == null ? null : DateTime.parse(json["appointmentdate"]),
        date: json["date"],
        userdoctorcommand: json["userdoctorcommand"],
        userdoctorrating: json["userdoctorrating"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        sno: json["sno"],
        v: json["__v"],
        prescription: json["prescription"] == null ? [] : List<dynamic>.from(json["prescription"]!.map((x) => x)),
        isTimeup: json["is_timeup"],
        isvisited: json["isvisited"],
        checkupResult: json["Checkup_result"] == null ? null : CheckupResult.fromJson(json["Checkup_result"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "patientId": patientId,
        "patientname": patientname,
        "appointmentstarttime": appointmentstarttime?.toIso8601String(),
        "appointmentendtime": appointmentendtime?.toIso8601String(),
        "doctorid": doctorid,
        "doctorname": doctorname,
        "appointmentdate": "${appointmentdate!.year.toString().padLeft(4, '0')}-${appointmentdate!.month.toString().padLeft(2, '0')}-${appointmentdate!.day.toString().padLeft(2, '0')}",
        "date": date,
        "userdoctorcommand": userdoctorcommand,
        "userdoctorrating": userdoctorrating,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "sno": sno,
        "__v": v,
        "prescription": prescription == null ? [] : List<dynamic>.from(prescription!.map((x) => x)),
        "is_timeup": isTimeup,
        "isvisited": isvisited,
        "Checkup_result": checkupResult?.toJson(),
    };
}

class CheckupResult {
    String? bodyTemp;
    String? spO2;
    String? heartRate;

    CheckupResult({
        this.bodyTemp,
        this.spO2,
        this.heartRate,
    });

    factory CheckupResult.fromJson(Map<String, dynamic> json) => CheckupResult(
        bodyTemp: json["Body_temp"],
        spO2: json["SpO2"],
        heartRate: json["Heart_Rate"],
    );

    Map<String, dynamic> toJson() => {
        "Body_temp": bodyTemp,
        "SpO2": spO2,
        "Heart_Rate": heartRate,
    };
}
