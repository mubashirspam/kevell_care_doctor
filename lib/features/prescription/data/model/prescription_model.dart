

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
    String? prescriptionid;
    String? remark;
    List<Prescription>? prescriptions;

    Data({
        this.totalCount,
        this.prescriptionid,
        this.remark,
        this.prescriptions,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalCount: json["totalCount"],
        prescriptionid: json["prescriptionid"],
        remark: json["remark"],
        prescriptions: json["Prescriptions"] == null ? [] : List<Prescription>.from(json["Prescriptions"]!.map((x) => Prescription.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "totalCount": totalCount,
        "prescriptionid": prescriptionid,
        "remark": remark,
        "Prescriptions": prescriptions == null ? [] : List<dynamic>.from(prescriptions!.map((x) => x.toJson())),
    };
}

class Prescription {
    String? name;
    String? type;
    String? duration;
    Timeoftheday? timeoftheday;
    List<Tobetaken>? tobetaken;

    Prescription({
        this.name,
        this.type,
        this.duration,
        this.timeoftheday,
        this.tobetaken,
    });

    factory Prescription.fromJson(Map<String, dynamic> json) => Prescription(
        name: json["name"],
        type: json["type"],
        duration: json["duration"],
        timeoftheday: json["timeoftheday"] == null ? null : Timeoftheday.fromJson(json["timeoftheday"]),
        tobetaken: json["tobetaken"] == null ? [] : List<Tobetaken>.from(json["tobetaken"]!.map((x) => Tobetaken.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "duration": duration,
        "timeoftheday": timeoftheday?.toJson(),
        "tobetaken": tobetaken == null ? [] : List<dynamic>.from(tobetaken!.map((x) => x.toJson())),
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
