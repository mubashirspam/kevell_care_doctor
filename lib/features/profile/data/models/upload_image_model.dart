// To parse this JSON data, do
//
//     final uploadedImageModel = uploadedImageModelFromJson(jsonString);

import 'dart:convert';

UploadedImageModel uploadedImageModelFromJson(String str) => UploadedImageModel.fromJson(json.decode(str));

String uploadedImageModelToJson(UploadedImageModel data) => json.encode(data.toJson());

class UploadedImageModel {
    bool? status;
    int? responsecode;
    String? message;
    List<Datum>? data;

    UploadedImageModel({
        this.status,
        this.responsecode,
        this.message,
        this.data,
    });

    factory UploadedImageModel.fromJson(Map<String, dynamic> json) => UploadedImageModel(
        status: json["status"],
        responsecode: json["responsecode"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "responsecode": responsecode,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    String? orignalfilename;
    String? storedfilename;
    String? phycicalpath;

    Datum({
        this.orignalfilename,
        this.storedfilename,
        this.phycicalpath,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        orignalfilename: json["Orignalfilename"],
        storedfilename: json["Storedfilename"],
        phycicalpath: json["Phycicalpath"],
    );

    Map<String, dynamic> toJson() => {
        "Orignalfilename": orignalfilename,
        "Storedfilename": storedfilename,
        "Phycicalpath": phycicalpath,
    };
}
