import 'dart:convert';

HomeStatusModel homeStatusModelFromJson(String str) =>
    HomeStatusModel.fromJson(json.decode(str));

String homeStatusModelToJson(HomeStatusModel data) =>
    json.encode(data.toJson());

class HomeStatusModel {
  HomeStatusModel({
    this.status,
    this.responsecode,
    this.message,
    this.data,
  });

  bool? status;
  int? responsecode;
  String? message;
  Data? data;

  factory HomeStatusModel.fromJson(Map<String, dynamic> json) =>
      HomeStatusModel(
        status: json["status"],
        responsecode: json["responsecode"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "responsecode": responsecode,
        "message": message,
        "data": data?.toJson(),
      };
}

class Data {
  Data({
    this.count,
    this.icon,
    this.statusName,
    this.createdAt,
    this.id,
    this.v,
    this.updatedAt,
  });

  String? count;
  String? icon;
  String? statusName;

  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        count: json["count"],
        icon: json["icon"],
        statusName: json["statusname"],
        id: json["_id"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "icon": icon,
        "statusname": statusName,
        "_id": id,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}
