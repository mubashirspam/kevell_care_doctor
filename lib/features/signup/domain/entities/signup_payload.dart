// To parse this JSON data, do
//
//     final singupPayload = singupPayloadFromJson(jsonString);

import 'dart:convert';



String singupPayloadToJson(SingupPayload data) => json.encode(data.toJson());

class SingupPayload {
    String? username;
    String? email;
    String? mobile;
    String? password;
    String? dob;
    String? address;
    String? specialist;
    String? location;
    String? registredId;

    SingupPayload({
        this.username,
        this.email,
        this.mobile,
        this.password,
        this.dob,
        this.address,
        this.specialist,
        this.location,
        this.registredId,
    });

 

    Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "mobile": mobile,
        "password": password,
        "dob": dob,
        "Address": address,
        "specialist": specialist,
        "location": location,
        "registred_Id": registredId,
    };
}
