// To parse this JSON data, do
//
//     final reportModel = reportModelFromJson(jsonString);

import 'dart:convert';

ReportModel reportModelFromJson(String str) => ReportModel.fromJson(json.decode(str));

String reportModelToJson(ReportModel data) => json.encode(data.toJson());

class ReportModel {
    int? responseCode;
    bool? status;
    String? message;
    List<Datum>? data;

    ReportModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory ReportModel.fromJson(Map<String, dynamic> json) => ReportModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "status": status,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    int? id;
    int? patientId;
    String? patientid;
    String? patientname;
    DateTime? appointmentstarttime;
    DateTime? appointmentendtime;
    int? doctornameid;
    String? doctorname;
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
    List<Prescription>? prescription;
    String? patientpdflink;
    String? isvisiteddate;
    Temperatureinfo? temperatureinfo;
    Bodyfatinfo? bpinfo;
    Bodyfatinfo? hwinfo;
    SpO2Info? spO2Info;
    Bodyfatinfo? bodyfatinfo;
    Bodyfatinfo? glucometerinfo;
    List<dynamic>? ecginfo;
    List<dynamic>? emginfo;
    List<dynamic>? gsrinfo;
    Bodyfatinfo? stestoscopeinfo;
    Bodyfatinfo? otoscopeinfo1;
    Bodyfatinfo? otoscopeinfo2;
    Bodyfatinfo? otoscopeinfo3;
    Bodyfatinfo? otoscopeinfo4;
    Bodyfatinfo? otoscopeinfo5;
    Bodyfatinfo? otoscopeinfo6;
    Bodyfatinfo? otoscopeinfo7;
    Bodyfatinfo? otoscopeinfo8;
    Bodyfatinfo? otoscopeinfo9;
    Bodyfatinfo? otoscopeinfo10;
    bool? isTimeup;
    String? reasonformeetingdoctor;
    String? appointmentlocation;

    Datum({
        this.id,
        this.patientId,
        this.patientid,
        this.patientname,
        this.appointmentstarttime,
        this.appointmentendtime,
        this.doctornameid,
        this.doctorname,
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
        this.patientpdflink,
        this.isvisiteddate,
        this.temperatureinfo,
        this.bpinfo,
        this.hwinfo,
        this.spO2Info,
        this.bodyfatinfo,
        this.glucometerinfo,
        this.ecginfo,
        this.emginfo,
        this.gsrinfo,
        this.stestoscopeinfo,
        this.otoscopeinfo1,
        this.otoscopeinfo2,
        this.otoscopeinfo3,
        this.otoscopeinfo4,
        this.otoscopeinfo5,
        this.otoscopeinfo6,
        this.otoscopeinfo7,
        this.otoscopeinfo8,
        this.otoscopeinfo9,
        this.otoscopeinfo10,
        this.isTimeup,
        this.reasonformeetingdoctor,
        this.appointmentlocation,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        patientId: json["patientId"],
        patientid: json["patientid"],
        patientname: json["patientname"],
        appointmentstarttime: json["appointmentstarttime"] == null ? null : DateTime.parse(json["appointmentstarttime"]),
        appointmentendtime: json["appointmentendtime"] == null ? null : DateTime.parse(json["appointmentendtime"]),
        doctornameid: json["doctornameid"],
        doctorname: json["doctorname"],
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
        prescription: json["prescription"] == null ? [] : List<Prescription>.from(json["prescription"]!.map((x) => Prescription.fromJson(x))),
        patientpdflink: json["patientpdflink"],
        isvisiteddate: json["isvisiteddate"],
        temperatureinfo: json["temperatureinfo"] == null ? null : Temperatureinfo.fromJson(json["temperatureinfo"]),
        bpinfo: json["bpinfo"] == null ? null : Bodyfatinfo.fromJson(json["bpinfo"]),
        hwinfo: json["hwinfo"] == null ? null : Bodyfatinfo.fromJson(json["hwinfo"]),
        spO2Info: json["spO2info"] == null ? null : SpO2Info.fromJson(json["spO2info"]),
        bodyfatinfo: json["bodyfatinfo"] == null ? null : Bodyfatinfo.fromJson(json["bodyfatinfo"]),
        glucometerinfo: json["glucometerinfo"] == null ? null : Bodyfatinfo.fromJson(json["glucometerinfo"]),
        ecginfo: json["ecginfo"] == null ? [] : List<dynamic>.from(json["ecginfo"]!.map((x) => x)),
        emginfo: json["emginfo"] == null ? [] : List<dynamic>.from(json["emginfo"]!.map((x) => x)),
        gsrinfo: json["gsrinfo"] == null ? [] : List<dynamic>.from(json["gsrinfo"]!.map((x) => x)),
        stestoscopeinfo: json["stestoscopeinfo"] == null ? null : Bodyfatinfo.fromJson(json["stestoscopeinfo"]),
        otoscopeinfo1: json["otoscopeinfo1"] == null ? null : Bodyfatinfo.fromJson(json["otoscopeinfo1"]),
        otoscopeinfo2: json["otoscopeinfo2"] == null ? null : Bodyfatinfo.fromJson(json["otoscopeinfo2"]),
        otoscopeinfo3: json["otoscopeinfo3"] == null ? null : Bodyfatinfo.fromJson(json["otoscopeinfo3"]),
        otoscopeinfo4: json["otoscopeinfo4"] == null ? null : Bodyfatinfo.fromJson(json["otoscopeinfo4"]),
        otoscopeinfo5: json["otoscopeinfo5"] == null ? null : Bodyfatinfo.fromJson(json["otoscopeinfo5"]),
        otoscopeinfo6: json["otoscopeinfo6"] == null ? null : Bodyfatinfo.fromJson(json["otoscopeinfo6"]),
        otoscopeinfo7: json["otoscopeinfo7"] == null ? null : Bodyfatinfo.fromJson(json["otoscopeinfo7"]),
        otoscopeinfo8: json["otoscopeinfo8"] == null ? null : Bodyfatinfo.fromJson(json["otoscopeinfo8"]),
        otoscopeinfo9: json["otoscopeinfo9"] == null ? null : Bodyfatinfo.fromJson(json["otoscopeinfo9"]),
        otoscopeinfo10: json["otoscopeinfo10"] == null ? null : Bodyfatinfo.fromJson(json["otoscopeinfo10"]),
        isTimeup: json["is_timeup"],
        reasonformeetingdoctor: json["Reasonformeetingdoctor"],
        appointmentlocation: json["appointmentlocation"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "patientId": patientId,
        "patientid": patientid,
        "patientname": patientname,
        "appointmentstarttime": appointmentstarttime?.toIso8601String(),
        "appointmentendtime": appointmentendtime?.toIso8601String(),
        "doctornameid": doctornameid,
        "doctorname": doctorname,
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
        "patientpdflink": patientpdflink,
        "isvisiteddate": isvisiteddate,
        "temperatureinfo": temperatureinfo?.toJson(),
        "bpinfo": bpinfo?.toJson(),
        "hwinfo": hwinfo?.toJson(),
        "spO2info": spO2Info?.toJson(),
        "bodyfatinfo": bodyfatinfo?.toJson(),
        "glucometerinfo": glucometerinfo?.toJson(),
        "ecginfo": ecginfo == null ? [] : List<dynamic>.from(ecginfo!.map((x) => x)),
        "emginfo": emginfo == null ? [] : List<dynamic>.from(emginfo!.map((x) => x)),
        "gsrinfo": gsrinfo == null ? [] : List<dynamic>.from(gsrinfo!.map((x) => x)),
        "stestoscopeinfo": stestoscopeinfo?.toJson(),
        "otoscopeinfo1": otoscopeinfo1?.toJson(),
        "otoscopeinfo2": otoscopeinfo2?.toJson(),
        "otoscopeinfo3": otoscopeinfo3?.toJson(),
        "otoscopeinfo4": otoscopeinfo4?.toJson(),
        "otoscopeinfo5": otoscopeinfo5?.toJson(),
        "otoscopeinfo6": otoscopeinfo6?.toJson(),
        "otoscopeinfo7": otoscopeinfo7?.toJson(),
        "otoscopeinfo8": otoscopeinfo8?.toJson(),
        "otoscopeinfo9": otoscopeinfo9?.toJson(),
        "otoscopeinfo10": otoscopeinfo10?.toJson(),
        "is_timeup": isTimeup,
        "Reasonformeetingdoctor": reasonformeetingdoctor,
        "appointmentlocation": appointmentlocation,
    };
}

class Bodyfatinfo {
    Bodyfatinfo();

    factory Bodyfatinfo.fromJson(Map<String, dynamic> json) => Bodyfatinfo(
    );

    Map<String, dynamic> toJson() => {
    };
}

class Prescription {
    int? doctorId;
    int? appointmentId;
    int? patientId;
    int? pno;
    String? name;
    String? type;
    String? duration;
    List<Timeoftheday>? timeoftheday;
    List<Timeoftheday>? tobetaken;
    String? remark;

    Prescription({
        this.doctorId,
        this.appointmentId,
        this.patientId,
        this.pno,
        this.name,
        this.type,
        this.duration,
        this.timeoftheday,
        this.tobetaken,
        this.remark,
    });

    factory Prescription.fromJson(Map<String, dynamic> json) => Prescription(
        doctorId: json["doctorID"],
        appointmentId: json["appointmentID"],
        patientId: json["patient_id"],
        pno: json["pno"],
        name: json["name"],
        type: json["type"],
        duration: json["duration"],
        timeoftheday: json["timeoftheday"] == null ? [] : List<Timeoftheday>.from(json["timeoftheday"]!.map((x) => Timeoftheday.fromJson(x))),
        tobetaken: json["tobetaken"] == null ? [] : List<Timeoftheday>.from(json["tobetaken"]!.map((x) => Timeoftheday.fromJson(x))),
        remark: json["remark"],
    );

    Map<String, dynamic> toJson() => {
        "doctorID": doctorId,
        "appointmentID": appointmentId,
        "patient_id": patientId,
        "pno": pno,
        "name": name,
        "type": type,
        "duration": duration,
        "timeoftheday": timeoftheday == null ? [] : List<dynamic>.from(timeoftheday!.map((x) => x.toJson())),
        "tobetaken": tobetaken == null ? [] : List<dynamic>.from(tobetaken!.map((x) => x.toJson())),
        "remark": remark,
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

class SpO2Info {
    String? id;
    String? patientId;
    String? appointmentId;
    String? doctorId;
    String? type;
    String? state;
    String? date;
    String? number;
    SpO2InfoData? data;

    SpO2Info({
        this.id,
        this.patientId,
        this.appointmentId,
        this.doctorId,
        this.type,
        this.state,
        this.date,
        this.number,
        this.data,
    });

    factory SpO2Info.fromJson(Map<String, dynamic> json) => SpO2Info(
        id: json["id"],
        patientId: json["patientID"],
        appointmentId: json["appointmentID"],
        doctorId: json["doctorID"],
        type: json["type"],
        state: json["state"],
        date: json["date"],
        number: json["number"],
        data: json["data"] == null ? null : SpO2InfoData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "patientID": patientId,
        "appointmentID": appointmentId,
        "doctorID": doctorId,
        "type": type,
        "state": state,
        "date": date,
        "number": number,
        "data": data?.toJson(),
    };
}

class SpO2InfoData {
    String? type;
    String? content;
    String? spo2;
    String? heartRate;

    SpO2InfoData({
        this.type,
        this.content,
        this.spo2,
        this.heartRate,
    });

    factory SpO2InfoData.fromJson(Map<String, dynamic> json) => SpO2InfoData(
        type: json["type"],
        content: json["content"],
        spo2: json["spo2"],
        heartRate: json["heart_rate"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "content": content,
        "spo2": spo2,
        "heart_rate": heartRate,
    };
}

class Temperatureinfo {
    String? id;
    String? patientId;
    String? appointmentId;
    String? doctorId;
    String? type;
    String? state;
    String? date;
    String? number;
    TemperatureinfoData? data;

    Temperatureinfo({
        this.id,
        this.patientId,
        this.appointmentId,
        this.doctorId,
        this.type,
        this.state,
        this.date,
        this.number,
        this.data,
    });

    factory Temperatureinfo.fromJson(Map<String, dynamic> json) => Temperatureinfo(
        id: json["id"],
        patientId: json["patientID"],
        appointmentId: json["appointmentID"],
        doctorId: json["doctorID"],
        type: json["type"],
        state: json["state"],
        date: json["date"],
        number: json["number"],
        data: json["data"] == null ? null : TemperatureinfoData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "patientID": patientId,
        "appointmentID": appointmentId,
        "doctorID": doctorId,
        "type": type,
        "state": state,
        "date": date,
        "number": number,
        "data": data?.toJson(),
    };
}

class TemperatureinfoData {
    String? type;
    String? content;

    TemperatureinfoData({
        this.type,
        this.content,
    });

    factory TemperatureinfoData.fromJson(Map<String, dynamic> json) => TemperatureinfoData(
        type: json["type"],
        content: json["content"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "content": content,
    };
}
