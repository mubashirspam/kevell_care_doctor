// To parse this JSON data, do
//
//     final reportModel = reportModelFromJson(jsonString);

import 'dart:convert';



ReportModel reportModelFromJson(String str) =>
    ReportModel.fromJson(json.decode(str));

String reportModelToJson(ReportModel data) => json.encode(data.toJson());

class ReportModel {
  int? responseCode;
  bool? status;
  String? message;
  DateTime? startdate;
  List<Datum>? data;

  ReportModel({
    this.responseCode,
    this.status,
    this.message,
    this.startdate,
    this.data,
  });

  factory ReportModel.fromJson(Map<String, dynamic> json) => ReportModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        startdate: json["startdate"] == null
            ? null
            : DateTime.parse(json["startdate"]),
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "status": status,
        "message": message,
        "startdate":
            "${startdate!.year.toString().padLeft(4, '0')}-${startdate!.month.toString().padLeft(2, '0')}-${startdate!.day.toString().padLeft(2, '0')}",
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  int? id;
  int? patientId;
  String? patientid;
  String? patientname;
  String? reasonformeetingdoctor;
  DateTime? appointmentstarttime;
  DateTime? appointmentendtime;
  int? doctornameid;
  String? doctorname;
  DateTime? appointmentdate;
  List<dynamic>? preexistingdisease;
  bool? isvisited;
  bool? isTimeup;
  String? date;
  int? userdoctorrating;
  String? userdoctorcommand;
  String? patientpdflink;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? sno;
  int? v;
  Temperatureinfo? temperatureinfo;
  DateTime? isvisiteddate;
  SpO2Info? spO2Info;
  Bpinfo? bpinfo;
  List<Info>? ecginfo;
  List<Info>? gsrinfo;
  List<Prescription>? prescription;
  Bodyfatinfo? hwinfo;
  Bodyfatinfo? bodyfatinfo;
  Bodyfatinfo? glucometerinfo;
  List<dynamic>? emginfo;
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

  Datum({
    this.id,
    this.patientId,
    this.patientid,
    this.patientname,
    this.reasonformeetingdoctor,
    this.appointmentstarttime,
    this.appointmentendtime,
    this.doctornameid,
    this.doctorname,
    this.appointmentdate,
    this.preexistingdisease,
    this.isvisited,
    this.isTimeup,
    this.date,
    this.userdoctorrating,
    this.userdoctorcommand,
    this.patientpdflink,
    this.createdAt,
    this.updatedAt,
    this.sno,
    this.v,
    this.temperatureinfo,
    this.isvisiteddate,
    this.spO2Info,
    this.bpinfo,
    this.ecginfo,
    this.gsrinfo,
    this.prescription,
    this.hwinfo,
    this.bodyfatinfo,
    this.glucometerinfo,
    this.emginfo,
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
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        patientId: json["patientId"],
        patientid: json["patientid"],
        patientname: json["patientname"],
        reasonformeetingdoctor: json["Reasonformeetingdoctor"],
        appointmentstarttime: json["appointmentstarttime"] == null
            ? null
            : DateTime.parse(json["appointmentstarttime"]),
        appointmentendtime: json["appointmentendtime"] == null
            ? null
            : DateTime.parse(json["appointmentendtime"]),
        doctornameid: json["doctornameid"],
        doctorname: json["doctorname"],
        appointmentdate: json["appointmentdate"] == null
            ? null
            : DateTime.parse(json["appointmentdate"]),
        preexistingdisease: json["preexistingdisease"] == null
            ? []
            : List<dynamic>.from(json["preexistingdisease"]!.map((x) => x)),
        isvisited: json["isvisited"],
        isTimeup: json["is_timeup"],
        date: json["date"],
        userdoctorrating: json["userdoctorrating"],
        userdoctorcommand: json["userdoctorcommand"],
        patientpdflink: json["patientpdflink"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        sno: json["sno"],
        v: json["__v"],
        temperatureinfo: json["temperatureinfo"] == null
            ? null
            : Temperatureinfo.fromJson(json["temperatureinfo"]),
        isvisiteddate: json["isvisiteddate"] == null
            ? null
            : DateTime.parse(json["isvisiteddate"]),
        spO2Info: json["spO2info"] == null
            ? null
            : SpO2Info.fromJson(json["spO2info"]),
        bpinfo: json["bpinfo"] == null ? null : Bpinfo.fromJson(json["bpinfo"]),
        ecginfo: json["ecginfo"] == null
            ? []
            : List<Info>.from(json["ecginfo"]!.map((x) => Info.fromJson(x))),
        gsrinfo: json["gsrinfo"] == null
            ? []
            : List<Info>.from(json["gsrinfo"]!.map((x) => Info.fromJson(x))),
        prescription: json["prescription"] == null
            ? []
            : List<Prescription>.from(
                json["prescription"]!.map((x) => Prescription.fromJson(x))),
        hwinfo: json["hwinfo"] == null
            ? null
            : Bodyfatinfo.fromJson(json["hwinfo"]),
        bodyfatinfo: json["bodyfatinfo"] == null
            ? null
            : Bodyfatinfo.fromJson(json["bodyfatinfo"]),
        glucometerinfo: json["glucometerinfo"] == null
            ? null
            : Bodyfatinfo.fromJson(json["glucometerinfo"]),
        emginfo: json["emginfo"] == null
            ? []
            : List<dynamic>.from(json["emginfo"]!.map((x) => x)),
        stestoscopeinfo: json["stestoscopeinfo"] == null
            ? null
            : Bodyfatinfo.fromJson(json["stestoscopeinfo"]),
        otoscopeinfo1: json["otoscopeinfo1"] == null
            ? null
            : Bodyfatinfo.fromJson(json["otoscopeinfo1"]),
        otoscopeinfo2: json["otoscopeinfo2"] == null
            ? null
            : Bodyfatinfo.fromJson(json["otoscopeinfo2"]),
        otoscopeinfo3: json["otoscopeinfo3"] == null
            ? null
            : Bodyfatinfo.fromJson(json["otoscopeinfo3"]),
        otoscopeinfo4: json["otoscopeinfo4"] == null
            ? null
            : Bodyfatinfo.fromJson(json["otoscopeinfo4"]),
        otoscopeinfo5: json["otoscopeinfo5"] == null
            ? null
            : Bodyfatinfo.fromJson(json["otoscopeinfo5"]),
        otoscopeinfo6: json["otoscopeinfo6"] == null
            ? null
            : Bodyfatinfo.fromJson(json["otoscopeinfo6"]),
        otoscopeinfo7: json["otoscopeinfo7"] == null
            ? null
            : Bodyfatinfo.fromJson(json["otoscopeinfo7"]),
        otoscopeinfo8: json["otoscopeinfo8"] == null
            ? null
            : Bodyfatinfo.fromJson(json["otoscopeinfo8"]),
        otoscopeinfo9: json["otoscopeinfo9"] == null
            ? null
            : Bodyfatinfo.fromJson(json["otoscopeinfo9"]),
        otoscopeinfo10: json["otoscopeinfo10"] == null
            ? null
            : Bodyfatinfo.fromJson(json["otoscopeinfo10"]),
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
        "appointmentdate":
            "${appointmentdate!.year.toString().padLeft(4, '0')}-${appointmentdate!.month.toString().padLeft(2, '0')}-${appointmentdate!.day.toString().padLeft(2, '0')}",
        "preexistingdisease": preexistingdisease == null
            ? []
            : List<dynamic>.from(preexistingdisease!.map((x) => x)),
        "isvisited": isvisited,
        "is_timeup": isTimeup,
        "date": date,
        "userdoctorrating": userdoctorrating,
        "userdoctorcommand": userdoctorcommand,
        "patientpdflink": patientpdflink,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "sno": sno,
        "__v": v,
        "temperatureinfo": temperatureinfo?.toJson(),
        "isvisiteddate":
            "${isvisiteddate!.year.toString().padLeft(4, '0')}-${isvisiteddate!.month.toString().padLeft(2, '0')}-${isvisiteddate!.day.toString().padLeft(2, '0')}",
        "spO2info": spO2Info?.toJson(),
        "bpinfo": bpinfo?.toJson(),
        "ecginfo": ecginfo == null
            ? []
            : List<dynamic>.from(ecginfo!.map((x) => x.toJson())),
        "gsrinfo": gsrinfo == null
            ? []
            : List<dynamic>.from(gsrinfo!.map((x) => x.toJson())),
        "prescription": prescription == null
            ? []
            : List<dynamic>.from(prescription!.map((x) => x.toJson())),
        "hwinfo": hwinfo?.toJson(),
        "bodyfatinfo": bodyfatinfo?.toJson(),
        "glucometerinfo": glucometerinfo?.toJson(),
        "emginfo":
            emginfo == null ? [] : List<dynamic>.from(emginfo!.map((x) => x)),
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
      };
}

class Bodyfatinfo {
  Bodyfatinfo();

  factory Bodyfatinfo.fromJson(Map<String, dynamic> json) => Bodyfatinfo();

  Map<String, dynamic> toJson() => {};
}

class Bpinfo {
  String? id;
  String? patientId;
  String? appointmentId;
  String? doctorId;
  String? type;
  String? state;
  DateTime? date;
  String? number;
  BpinfoData? data;

  Bpinfo({
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

  factory Bpinfo.fromJson(Map<String, dynamic> json) => Bpinfo(
        id: json["id"],
        patientId: json["patientID"],
        appointmentId: json["appointmentID"],
        doctorId: json["doctorID"],
        type: json["type"],
        state: json["state"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        number: json["number"],
        data: json["data"] == null ? null : BpinfoData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "patientID": patientId,
        "appointmentID": appointmentId,
        "doctorID": doctorId,
        "type": type,
        "state": state,
        "date": date?.toIso8601String(),
        "number": number,
        "data": data?.toJson(),
      };
}

class BpinfoData {
  String? type;
  String? bpsysValue;
  String? bpDiaValue;
  String? bpPulseValue;

  BpinfoData({
    this.type,
    this.bpsysValue,
    this.bpDiaValue,
    this.bpPulseValue,
  });

  factory BpinfoData.fromJson(Map<String, dynamic> json) => BpinfoData(
        type: json["type"],
        bpsysValue: json["BpsysValue"],
        bpDiaValue: json["BpDiaValue"],
        bpPulseValue: json["BpPulseValue"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "BpsysValue": bpsysValue,
        "BpDiaValue": bpDiaValue,
        "BpPulseValue": bpPulseValue,
      };
}

class Info {
  EcginfoData? data;
  String? id;
  int? patientId;
  int? appointmentId;
  int? doctorId;
  dynamic state;
  int? number;

  Info({
    this.data,
    this.id,
    this.patientId,
    this.appointmentId,
    this.doctorId,
    this.state,
    this.number,
  });

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        data: json["data"] == null ? null : EcginfoData.fromJson(json["data"]),
        id: json["id"],
        patientId: json["patientID"],
        appointmentId: json["appointmentID"],
        doctorId: json["doctorID"],
        state: json["state"],
        number: json["number"],
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "id": id,
        "patientID": patientId,
        "appointmentID": appointmentId,
        "doctorID": doctorId,
        "state": state,
        "number": number,
      };
}

class EcginfoData {
  String? content;
  String? type;

  EcginfoData({
    this.content,
    this.type,
  });

  factory EcginfoData.fromJson(Map<String, dynamic> json) => EcginfoData(
        content: json["content"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "content": content,
        "type": type,
      };
}

class Prescription {
  dynamic doctorId;
  dynamic appointmentId;
  String? patientId;
  String? name;
  String? type;
  String? duration;
  List<Timeoftheday>? timeoftheday;
  List<Timeoftheday>? tobetaken;
  String? remark;
  int? pno;

  Prescription({
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

  factory Prescription.fromJson(Map<String, dynamic> json) => Prescription(
        doctorId: json["doctorID"],
        appointmentId: json["appointmentID"],
        patientId: json["patient_id"],
        name: json["name"],
        type: json["type"],
        duration: json["duration"],
        timeoftheday: json["timeoftheday"] == null
            ? []
            : List<Timeoftheday>.from(
                json["timeoftheday"]!.map((x) => Timeoftheday.fromJson(x))),
        tobetaken: json["tobetaken"] == null
            ? []
            : List<Timeoftheday>.from(
                json["tobetaken"]!.map((x) => Timeoftheday.fromJson(x))),
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
        "timeoftheday": timeoftheday == null
            ? []
            : List<dynamic>.from(timeoftheday!.map((x) => x.toJson())),
        "tobetaken": tobetaken == null
            ? []
            : List<dynamic>.from(tobetaken!.map((x) => x.toJson())),
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

class SpO2Info {
  String? id;
  String? patientId;
  String? appointmentId;
  String? doctorId;
  String? type;
  String? state;
  DateTime? date;
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
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
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
        "date": date?.toIso8601String(),
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
  DateTime? date;
  String? number;
  EcginfoData? data;

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

  factory Temperatureinfo.fromJson(Map<String, dynamic> json) =>
      Temperatureinfo(
        id: json["id"],
        patientId: json["patientID"],
        appointmentId: json["appointmentID"],
        doctorId: json["doctorID"],
        type: json["type"],
        state: json["state"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        number: json["number"],
        data: json["data"] == null ? null : EcginfoData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "patientID": patientId,
        "appointmentID": appointmentId,
        "doctorID": doctorId,
        "type": type,
        "state": state,
        "date": date?.toIso8601String(),
        "number": number,
        "data": data?.toJson(),
      };
}
