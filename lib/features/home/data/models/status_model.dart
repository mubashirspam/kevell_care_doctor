// To parse this JSON data, do
//
//     final homeStatusModel = homeStatusModelFromJson(jsonString);

import 'dart:convert';

HomeStatusModel homeStatusModelFromJson(String str) => HomeStatusModel.fromJson(json.decode(str));

String homeStatusModelToJson(HomeStatusModel data) => json.encode(data.toJson());

class HomeStatusModel {
    bool? success;
    int? responsecode;
    String? message;
    Data? data;

    HomeStatusModel({
        this.success,
        this.responsecode,
        this.message,
        this.data,
    });

    factory HomeStatusModel.fromJson(Map<String, dynamic> json) => HomeStatusModel(
        success: json["success"],
        responsecode: json["responsecode"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "responsecode": responsecode,
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    List<Status>? status;

    Data({
        this.status,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        status: json["status"] == null ? [] : List<Status>.from(json["status"]!.map((x) => Status.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status == null ? [] : List<dynamic>.from(status!.map((x) => x.toJson())),
    };
}

class Status {
    String? name;
    int? count;

    Status({
        this.name,
        this.count,
    });

    factory Status.fromJson(Map<String, dynamic> json) => Status(
        name: json["name"],
        count: json["count"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "count": count,
    };
}
