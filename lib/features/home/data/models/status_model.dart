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
    List<Datum>? data;

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
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "responsecode": responsecode,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    int? todaywaiting;
    int? vistedall;

    Datum({
        this.todaywaiting,
        this.vistedall,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        todaywaiting: json["todaywaiting"],
        vistedall: json["vistedall"],
    );

    Map<String, dynamic> toJson() => {
        "todaywaiting": todaywaiting,
        "vistedall": vistedall,
    };
}
