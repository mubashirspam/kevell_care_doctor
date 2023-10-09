// To parse this JSON data, do
//
//     final chatPersonModel = chatPersonModelFromJson(jsonString);

import 'dart:convert';

ChatPersonModel chatPersonModelFromJson(String str) => ChatPersonModel.fromJson(json.decode(str));

String chatPersonModelToJson(ChatPersonModel data) => json.encode(data.toJson());

class ChatPersonModel {
    int? responseCode;
    bool? success;
    List<Result>? result;

    ChatPersonModel({
        this.responseCode,
        this.success,
        this.result,
    });

    factory ChatPersonModel.fromJson(Map<String, dynamic> json) => ChatPersonModel(
        responseCode: json["responseCode"],
        success: json["success"],
        result: json["result"] == null ? [] : List<Result>.from(json["result"]!.map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "success": success,
        "result": result == null ? [] : List<dynamic>.from(result!.map((x) => x.toJson())),
    };
}

class Result {
    int? id;
    String? username;
    String? profileImagelink;

    Result({
        this.id,
        this.username,
        this.profileImagelink,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["_id"],
        username: json["Username"],
        profileImagelink: json["ProfileImagelink"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "Username": username,
        "ProfileImagelink": profileImagelink,
    };
}
