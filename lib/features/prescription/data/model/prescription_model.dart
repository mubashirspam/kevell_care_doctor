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
    int? id;
    int? patientId;
    String? patientname;
    int? doctorId;
    String? doctorname;
    DateTime? appointmentDate;
    List<Prescription>? prescription;

    Data({
        this.id,
        this.patientId,
        this.patientname,
        this.doctorId,
        this.doctorname,
        this.appointmentDate,
        this.prescription,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        patientId: json["patient_id"],
        patientname: json["patientname"],
        doctorId: json["doctor_id"],
        doctorname: json["doctorname"],
        appointmentDate: json["appointment_date"] == null ? null : DateTime.parse(json["appointment_date"]),
        prescription: json["prescription"] == null ? [] : List<Prescription>.from(json["prescription"]!.map((x) => Prescription.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "patient_id": patientId,
        "patientname": patientname,
        "doctor_id": doctorId,
        "doctorname": doctorname,
        "appointment_date": "${appointmentDate!.year.toString().padLeft(4, '0')}-${appointmentDate!.month.toString().padLeft(2, '0')}-${appointmentDate!.day.toString().padLeft(2, '0')}",
        "prescription": prescription == null ? [] : List<dynamic>.from(prescription!.map((x) => x.toJson())),
    };
}

class Prescription {
    String? name;
    String? type;
    String? duration;
    Timeoftheday? timeoftheday;
    List<Tobetaken>? tobetaken;
    String? remarks;

    Prescription({
        this.name,
        this.type,
        this.duration,
        this.timeoftheday,
        this.tobetaken,
        this.remarks,
    });

    factory Prescription.fromJson(Map<String, dynamic> json) => Prescription(
        name: json["name"],
        type: json["type"],
        duration: json["duration"],
        timeoftheday: json["timeoftheday"] == null ? null : Timeoftheday.fromJson(json["timeoftheday"]),
        tobetaken: json["tobetaken"] == null ? [] : List<Tobetaken>.from(json["tobetaken"]!.map((x) => Tobetaken.fromJson(x))),
        remarks: json["remarks"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "duration": duration,
        "timeoftheday": timeoftheday?.toJson(),
        "tobetaken": tobetaken == null ? [] : List<dynamic>.from(tobetaken!.map((x) => x.toJson())),
        "remarks": remarks,
    };
}

class Timeoftheday {
    String? morning;
    String? evening;
    String? noon;
    String? night;

    Timeoftheday({
        this.morning,
        this.evening,
        this.noon,
        this.night,
    });

    factory Timeoftheday.fromJson(Map<String, dynamic> json) => Timeoftheday(
        morning: json["morning"],
        evening: json["evening"],
        noon: json["noon"],
        night: json["night"],
    );

    Map<String, dynamic> toJson() => {
        "morning": morning,
        "evening": evening,
        "noon": noon,
        "night": night,
    };
}

class Tobetaken {
    String? name;
    bool? value;

    Tobetaken({
        this.name,
        this.value,
    });

    factory Tobetaken.fromJson(Map<String, dynamic> json) => Tobetaken(
        name: json["name"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
    };
}
