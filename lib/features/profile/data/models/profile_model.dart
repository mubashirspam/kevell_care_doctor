// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
    bool? status;
    int? responsecode;
    String? message;
    Profile? data;

    ProfileModel({
        this.status,
        this.responsecode,
        this.message,
        this.data,
    });

    ProfileModel copyWith({
        bool? status,
        int? responsecode,
        String? message,
        Profile? data,
    }) => 
        ProfileModel(
            status: status ?? this.status,
            responsecode: responsecode ?? this.responsecode,
            message: message ?? this.message,
            data: data ?? this.data,
        );

    factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        status: json["status"],
        responsecode: json["responsecode"],
        message: json["message"],
        data: json["data"] == null ? null : Profile.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "responsecode": responsecode,
        "message": message,
        "data": data?.toJson(),
    };
}

class Profile {
    int? registeredUserId;
    String? name;
    String? emailId;
    String? mobileNo;
    String? profileImagelink;
    DateTime? dob;
    Address? address;
    DateTime? createdAt;
    DateTime? updatedAt;
    bool? doctorApproved;
    String? specialist;
    String? location;
    String? regId;
    String? gender;
    String? signatureImage;
    BiographyAndSpecializations? professionalInformation;
    BiographyAndSpecializations? practiceInformation;
    BiographyAndSpecializations? communicationPreferences;
    BiographyAndSpecializations? biographyAndSpecializations;
    BiographyAndSpecializations? consentAndAgreement;
    int? v;

    Profile({
        this.registeredUserId,
        this.name,
        this.emailId,
        this.mobileNo,
        this.profileImagelink,
        this.dob,
        this.address,
        this.createdAt,
        this.updatedAt,
        this.doctorApproved,
        this.specialist,
        this.location,
        this.regId,
        this.gender,
        this.signatureImage,
        this.professionalInformation,
        this.practiceInformation,
        this.communicationPreferences,
        this.biographyAndSpecializations,
        this.consentAndAgreement,
        this.v,
    });

    Profile copyWith({
        int? registeredUserId,
        String? name,
        String? emailId,
        String? mobileNo,
        String? profileImagelink,
        DateTime? dob,
        Address? address,
        DateTime? createdAt,
        DateTime? updatedAt,
        bool? doctorApproved,
        String? specialist,
        String? location,
        String? regId,
        String? gender,
        String? signatureImage,
        BiographyAndSpecializations? professionalInformation,
        BiographyAndSpecializations? practiceInformation,
        BiographyAndSpecializations? communicationPreferences,
        BiographyAndSpecializations? biographyAndSpecializations,
        BiographyAndSpecializations? consentAndAgreement,
        int? v,
    }) => 
        Profile(
            registeredUserId: registeredUserId ?? this.registeredUserId,
            name: name ?? this.name,
            emailId: emailId ?? this.emailId,
            mobileNo: mobileNo ?? this.mobileNo,
            profileImagelink: profileImagelink ?? this.profileImagelink,
            dob: dob ?? this.dob,
            address: address ?? this.address,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
            doctorApproved: doctorApproved ?? this.doctorApproved,
            specialist: specialist ?? this.specialist,
            location: location ?? this.location,
            regId: regId ?? this.regId,
            gender: gender ?? this.gender,
            signatureImage: signatureImage ?? this.signatureImage,
            professionalInformation: professionalInformation ?? this.professionalInformation,
            practiceInformation: practiceInformation ?? this.practiceInformation,
            communicationPreferences: communicationPreferences ?? this.communicationPreferences,
            biographyAndSpecializations: biographyAndSpecializations ?? this.biographyAndSpecializations,
            consentAndAgreement: consentAndAgreement ?? this.consentAndAgreement,
            v: v ?? this.v,
        );

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        registeredUserId: json["registeredUserId"],
        name: json["name"],
        emailId: json["email_id"],
        mobileNo: json["mobile_no"],
        profileImagelink: json["profile_imagelink"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
        address: json["address"] == null ? null : Address.fromJson(json["address"]),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        doctorApproved: json["doctor_approved"],
        specialist: json["specialist"],
        location: json["location"],
        regId: json["reg_id"],
        gender: json["gender"],
        signatureImage: json["signature_image"],
        professionalInformation: json["professional_information"] == null ? null : BiographyAndSpecializations.fromJson(json["professional_information"]),
        practiceInformation: json["practice_information"] == null ? null : BiographyAndSpecializations.fromJson(json["practice_information"]),
        communicationPreferences: json["communication_preferences"] == null ? null : BiographyAndSpecializations.fromJson(json["communication_preferences"]),
        biographyAndSpecializations: json["biography_and_specializations"] == null ? null : BiographyAndSpecializations.fromJson(json["biography_and_specializations"]),
        consentAndAgreement: json["consent_and_agreement"] == null ? null : BiographyAndSpecializations.fromJson(json["consent_and_agreement"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "registeredUserId": registeredUserId,
        "name": name,
        "email_id": emailId,
        "mobile_no": mobileNo,
        "profile_imagelink": profileImagelink,
        "dob": dob?.toIso8601String(),
        "address": address?.toJson(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "doctor_approved": doctorApproved,
        "specialist": specialist,
        "location": location,
        "reg_id": regId,
        "gender": gender,
        "signature_image": signatureImage,
        "professional_information": professionalInformation?.toJson(),
        "practice_information": practiceInformation?.toJson(),
        "communication_preferences": communicationPreferences?.toJson(),
        "biography_and_specializations": biographyAndSpecializations?.toJson(),
        "consent_and_agreement": consentAndAgreement?.toJson(),
        "__v": v,
    };
}

class Address {
    String? street;
    String? city;
    String? state;
    String? district;
    String? zipcode;

    Address({
        this.street,
        this.city,
        this.state,
        this.district,
        this.zipcode,
    });

    Address copyWith({
        String? street,
        String? city,
        String? state,
        String? district,
        String? zipcode,
    }) => 
        Address(
            street: street ?? this.street,
            city: city ?? this.city,
            state: state ?? this.state,
            district: district ?? this.district,
            zipcode: zipcode ?? this.zipcode,
        );

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        city: json["city"],
        state: json["state"],
        district: json["district"],
        zipcode: json["zipcode"],
    );

    Map<String, dynamic> toJson() => {
        "street": street,
        "city": city,
        "state": state,
        "district": district,
        "zipcode": zipcode,
    };
}

class BiographyAndSpecializations {
    BiographyAndSpecializations();

   

    factory BiographyAndSpecializations.fromJson(Map<String, dynamic> json) => BiographyAndSpecializations(
    );

    Map<String, dynamic> toJson() => {
    };
}
