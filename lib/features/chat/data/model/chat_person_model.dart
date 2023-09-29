// To parse this JSON data, do
//
//     final chatPersonModel = chatPersonModelFromJson(jsonString);

import 'dart:convert';

List<ChatPersonModel> chatPersonModelFromJson(String str) => List<ChatPersonModel>.from(json.decode(str).map((x) => ChatPersonModel.fromJson(x)));

String chatPersonModelToJson(List<ChatPersonModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ChatPersonModel {
    int? id;
    String? username;
    String? profileImagelink;

    ChatPersonModel({
        this.id,
        this.username,
        this.profileImagelink,
    });

    factory ChatPersonModel.fromJson(Map<String, dynamic> json) => ChatPersonModel(
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
