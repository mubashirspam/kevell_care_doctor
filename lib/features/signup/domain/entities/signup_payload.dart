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
    DateTime? dob;
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

    SingupPayload copyWith({
        String? username,
        String? email,
        String? mobile,
        String? password,
        DateTime? dob,
        String? address,
        String? specialist,
        String? location,
        String? registredId,
    }) => 
        SingupPayload(
            username: username ?? this.username,
            email: email ?? this.email,
            mobile: mobile ?? this.mobile,
            password: password ?? this.password,
            dob: dob ?? this.dob,
            address: address ?? this.address,
            specialist: specialist ?? this.specialist,
            location: location ?? this.location,
            registredId: registredId ?? this.registredId,
        );

    

    Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "mobile": mobile,
        "password": password,
        "DOB": dob?.toIso8601String(),
        "Address": address,
        "specialist": specialist,
        "location": location,
        "registred_Id": registredId,
    };
}
