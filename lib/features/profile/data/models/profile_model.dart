import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  ProfileModel({
    this.status,
    this.responsecode,
    this.message,
    this.data,
  });

  bool? status;
  int? responsecode;
  String? message;
  Data? data;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
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
    this.fullName,
    this.phone,
    this.createdAt,
    this.id,
    this.v,
    this.updatedAt,
    this.address,
    this.dob,
    this.email,
  });

  String? fullName;
  String? email;
  String? dob;
  String? address;

  String? phone;
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        fullName: json["name"],
        email: json["email"],
        dob: json["dob"],
        address: json["address"],
        phone: json["phone"],
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
        "name": fullName,
        "email": email,
        "dob": dob,
        "address": address,
        "phone": phone,
        "_id": id,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}
