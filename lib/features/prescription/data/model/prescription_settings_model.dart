// To parse this JSON data, do
//
//     final prescriptionSettingsModel = prescriptionSettingsModelFromJson(jsonString);

import 'dart:convert';

PrescriptionSettingsModel prescriptionSettingsModelFromJson(String str) => PrescriptionSettingsModel.fromJson(json.decode(str));

String prescriptionSettingsModelToJson(PrescriptionSettingsModel data) => json.encode(data.toJson());

class PrescriptionSettingsModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    PrescriptionSettingsModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory PrescriptionSettingsModel.fromJson(Map<String, dynamic> json) => PrescriptionSettingsModel(
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
    List<DataObjec>? type;
    List<DataObjec>? timeoftheday;
    List<DataObjec>? tobetaken;
    int? v;

    Data({
        this.type,
        this.timeoftheday,
        this.tobetaken,
        this.v,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        type: json["type"] == null ? [] : List<DataObjec>.from(json["type"]!.map((x) => DataObjec.fromJson(x))),
        timeoftheday: json["timeoftheday"] == null ? [] : List<DataObjec>.from(json["timeoftheday"]!.map((x) => DataObjec.fromJson(x))),
        tobetaken: json["tobetaken"] == null ? [] : List<DataObjec>.from(json["tobetaken"]!.map((x) => DataObjec.fromJson(x))),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "type": type == null ? [] : List<dynamic>.from(type!.map((x) => x.toJson())),
        "timeoftheday": timeoftheday == null ? [] : List<dynamic>.from(timeoftheday!.map((x) => x.toJson())),
        "tobetaken": tobetaken == null ? [] : List<dynamic>.from(tobetaken!.map((x) => x.toJson())),
        "__v": v,
    };
}

class DataObjec {
    int? id;
    String? name;
    bool ?status;

    DataObjec({
        this.id,
        this.name,
        this.status,
    });

    factory DataObjec.fromJson(Map<String, dynamic> json) => DataObjec(
        id: json["_id"],
        name: json["name"],
        status:json["status"]??false
        
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "status":status

    };
}
