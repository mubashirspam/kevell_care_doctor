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
    String? appointmentstarttime;
    String? appointmentendtime;
    int? doctorpractitionerid;
    String? doctorpractitionername;
    int? doctornameid;
    String? doctorname;
    String? appointmentlocation;
    DateTime? appointmentdate;
    DateTime? appointmentdateforstring;
    List<String>? preexistingdisease;
    String? preexistingdiseaseid;
    String? kioskId;
    bool? isvisited;
    String? date;
    int? userdoctorrating;
    String? userdoctorcommand;
    String? patientpdflink;
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
        this.doctorpractitionerid,
        this.doctorpractitionername,
        this.doctornameid,
        this.doctorname,
        this.appointmentlocation,
        this.appointmentdate,
        this.appointmentdateforstring,
        this.preexistingdisease,
        this.preexistingdiseaseid,
        this.kioskId,
        this.isvisited,
        this.date,
        this.userdoctorrating,
        this.userdoctorcommand,
        this.patientpdflink,
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
        appointmentstarttime: json["appointmentstarttime"],
        appointmentendtime: json["appointmentendtime"],
        doctorpractitionerid: json["doctorpractitionerid"],
        doctorpractitionername: json["doctorpractitionername"],
        doctornameid: json["doctornameid"],
        doctorname: json["doctorname"],
        appointmentlocation: json["appointmentlocation"],
        appointmentdate: json["appointmentdate"] == null ? null : DateTime.parse(json["appointmentdate"]),
        appointmentdateforstring: json["appointmentdateforstring"] == null ? null : DateTime.parse(json["appointmentdateforstring"]),
        preexistingdisease: json["preexistingdisease"] == null ? [] : List<String>.from(json["preexistingdisease"]!.map((x) => x)),
        preexistingdiseaseid: json["preexistingdiseaseid"],
        kioskId: json["KioskId"],
        isvisited: json["isvisited"],
        date: json["date"],
        userdoctorrating: json["userdoctorrating"],
        userdoctorcommand: json["userdoctorcommand"],
        patientpdflink: json["patientpdflink"],
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
        "appointmentstarttime": appointmentstarttime,
        "appointmentendtime": appointmentendtime,
        "doctorpractitionerid": doctorpractitionerid,
        "doctorpractitionername": doctorpractitionername,
        "doctornameid": doctornameid,
        "doctorname": doctorname,
        "appointmentlocation": appointmentlocation,
        "appointmentdate": "${appointmentdate!.year.toString().padLeft(4, '0')}-${appointmentdate!.month.toString().padLeft(2, '0')}-${appointmentdate!.day.toString().padLeft(2, '0')}",
        "appointmentdateforstring": "${appointmentdateforstring!.year.toString().padLeft(4, '0')}-${appointmentdateforstring!.month.toString().padLeft(2, '0')}-${appointmentdateforstring!.day.toString().padLeft(2, '0')}",
        "preexistingdisease": preexistingdisease == null ? [] : List<dynamic>.from(preexistingdisease!.map((x) => x)),
        "preexistingdiseaseid": preexistingdiseaseid,
        "KioskId": kioskId,
        "isvisited": isvisited,
        "date": date,
        "userdoctorrating": userdoctorrating,
        "userdoctorcommand": userdoctorcommand,
        "patientpdflink": patientpdflink,
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
    String? name;
    String? type;
    String? duration;
    Remark? remark;
    int? pno;
    List<Timeoftheday>? timeoftheday;
    List<Timeoftheday>? tobetaken;
    String? patientId;

    PrescriptionElement({
        this.doctorId,
        this.appointmentId,
        this.name,
        this.type,
        this.duration,
        this.remark,
        this.pno,
        this.timeoftheday,
        this.tobetaken,
        this.patientId,
    });

    factory PrescriptionElement.fromJson(Map<String, dynamic> json) => PrescriptionElement(
        doctorId: json["doctorID"],
        appointmentId: json["appointmentID"],
        name: json["name"],
        type: json["type"],
        duration: json["duration"],
        remark: remarkValues.map[json["remark"]]!,
        pno: json["pno"],
        timeoftheday: json["timeoftheday"] == null ? [] : List<Timeoftheday>.from(json["timeoftheday"]!.map((x) => Timeoftheday.fromJson(x))),
        tobetaken: json["tobetaken"] == null ? [] : List<Timeoftheday>.from(json["tobetaken"]!.map((x) => Timeoftheday.fromJson(x))),
        patientId: json["patient_id"],
    );

    Map<String, dynamic> toJson() => {
        "doctorID": doctorId,
        "appointmentID": appointmentId,
        "name": name,
        "type": type,
        "duration": duration,
        "remark": remarkValues.reverse[remark],
        "pno": pno,
        "timeoftheday": timeoftheday == null ? [] : List<dynamic>.from(timeoftheday!.map((x) => x.toJson())),
        "tobetaken": tobetaken == null ? [] : List<dynamic>.from(tobetaken!.map((x) => x.toJson())),
        "patient_id": patientId,
    };
}

enum Remark { ALL }

final remarkValues = EnumValues({
    "all": Remark.ALL
});

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

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
