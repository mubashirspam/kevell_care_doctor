// To parse this JSON data, do
//
//     final prescriptionModel = prescriptionModelFromJson(jsonString);

import 'dart:convert';

PrescriptionModel prescriptionModelFromJson(String str) => PrescriptionModel.fromJson(json.decode(str));

String prescriptionModelToJson(PrescriptionModel data) => json.encode(data.toJson());

class PrescriptionModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    PrescriptionModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory PrescriptionModel.fromJson(Map<String, dynamic> json) => PrescriptionModel(
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
    List<Prescription>? prescriptions;

    Data({
        this.totalCount,
        this.prescriptions,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalCount: json["totalCount"],
        prescriptions: json["Prescriptions"] == null ? [] : List<Prescription>.from(json["Prescriptions"]!.map((x) => Prescription.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "totalCount": totalCount,
        "Prescriptions": prescriptions == null ? [] : List<dynamic>.from(prescriptions!.map((x) => x.toJson())),
    };
}

class Prescription {
    int? id;
    int? patientId;
    String? patientid;
    String? patientname;
    String? reasonformeetingdoctor;
    DateTime? appointmentstarttime;
    DateTime? appointmentendtime;
    int? doctornameid;
    String? doctorname;
    String? appointmentlocation;
    DateTime? appointmentdate;
    List<dynamic>? preexistingdisease;
    bool? isvisited;
    String? date;
    int? userdoctorrating;
    String? userdoctorcommand;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? sno;
    int? v;
    List<PrescriptionElement>? prescription;

    Prescription({
        this.id,
        this.patientId,
        this.patientid,
        this.patientname,
        this.reasonformeetingdoctor,
        this.appointmentstarttime,
        this.appointmentendtime,
        this.doctornameid,
        this.doctorname,
        this.appointmentlocation,
        this.appointmentdate,
        this.preexistingdisease,
        this.isvisited,
        this.date,
        this.userdoctorrating,
        this.userdoctorcommand,
        this.createdAt,
        this.updatedAt,
        this.sno,
        this.v,
        this.prescription,
    });

    factory Prescription.fromJson(Map<String, dynamic> json) => Prescription(
        id: json["_id"],
        patientId: json["patientId"],
        patientid: json["patientid"],
        patientname: json["patientname"],
        reasonformeetingdoctor: json["Reasonformeetingdoctor"],
        appointmentstarttime: json["appointmentstarttime"] == null ? null : DateTime.parse(json["appointmentstarttime"]),
        appointmentendtime: json["appointmentendtime"] == null ? null : DateTime.parse(json["appointmentendtime"]),
        doctornameid: json["doctornameid"],
        doctorname: json["doctorname"],
        appointmentlocation: json["appointmentlocation"],
        appointmentdate: json["appointmentdate"] == null ? null : DateTime.parse(json["appointmentdate"]),
        preexistingdisease: json["preexistingdisease"] == null ? [] : List<dynamic>.from(json["preexistingdisease"]!.map((x) => x)),
        isvisited: json["isvisited"],
        date: json["date"],
        userdoctorrating: json["userdoctorrating"],
        userdoctorcommand: json["userdoctorcommand"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        sno: json["sno"],
        v: json["__v"],
        prescription: json["prescription"] == null ? [] : List<PrescriptionElement>.from(json["prescription"]!.map((x) => PrescriptionElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "patientId": patientId,
        "patientid": patientid,
        "patientname": patientname,
        "Reasonformeetingdoctor": reasonformeetingdoctor,
        "appointmentstarttime": appointmentstarttime?.toIso8601String(),
        "appointmentendtime": appointmentendtime?.toIso8601String(),
        "doctornameid": doctornameid,
        "doctorname": doctorname,
        "appointmentlocation": appointmentlocation,
        "appointmentdate": "${appointmentdate!.year.toString().padLeft(4, '0')}-${appointmentdate!.month.toString().padLeft(2, '0')}-${appointmentdate!.day.toString().padLeft(2, '0')}",
        "preexistingdisease": preexistingdisease == null ? [] : List<dynamic>.from(preexistingdisease!.map((x) => x)),
        "isvisited": isvisited,
        "date": date,
        "userdoctorrating": userdoctorrating,
        "userdoctorcommand": userdoctorcommand,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "sno": sno,
        "__v": v,
        "prescription": prescription == null ? [] : List<dynamic>.from(prescription!.map((x) => x.toJson())),
    };
}

class PrescriptionElement {
    int? doctorId;
    int? appointmentId;
    int? patientId;
    String? name;
    String? type;
    String? duration;
    List<Timeoftheday>? timeoftheday;
    List<Timeoftheday>? tobetaken;
    String? remark;
    int? pno;

    PrescriptionElement({
        this.doctorId,
        this.appointmentId,
        this.patientId,
        this.name,
        this.type,
        this.duration,
        this.timeoftheday,
        this.tobetaken,
        this.remark,
        this.pno,
    });

    factory PrescriptionElement.fromJson(Map<String, dynamic> json) => PrescriptionElement(
        doctorId: json["doctorID"],
        appointmentId: json["appointmentID"],
        patientId: json["patient_id"],
        name: json["name"],
        type: json["type"],
        duration: json["duration"],
        timeoftheday: json["timeoftheday"] == null ? [] : List<Timeoftheday>.from(json["timeoftheday"]!.map((x) => Timeoftheday.fromJson(x))),
        tobetaken: json["tobetaken"] == null ? [] : List<Timeoftheday>.from(json["tobetaken"]!.map((x) => Timeoftheday.fromJson(x))),
        remark: json["remark"],
        pno: json["pno"],
    );

    Map<String, dynamic> toJson() => {
        "doctorID": doctorId,
        "appointmentID": appointmentId,
        "patient_id": patientId,
        "name": name,
        "type": type,
        "duration": duration,
        "timeoftheday": timeoftheday == null ? [] : List<dynamic>.from(timeoftheday!.map((x) => x.toJson())),
        "tobetaken": tobetaken == null ? [] : List<dynamic>.from(tobetaken!.map((x) => x.toJson())),
        "remark": remark,
        "pno": pno,
    };
}

class Timeoftheday {
    String? name;
    bool? value;

    Timeoftheday({
        this.name,
        this.value,
    });

    factory Timeoftheday.fromJson(Map<String, dynamic> json) => Timeoftheday(
        name: json["name"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
    };
}
