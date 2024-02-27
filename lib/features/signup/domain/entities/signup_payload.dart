

class SingupPayload {
    String? name;
    String? emailId;
    String? mobileNo;
    String? password;
    DateTime? dob;
    Address? address;
    String? specialist;
    String? location;
    String? regId;
    String? gender;

    SingupPayload({
        this.name,
        this.emailId,
        this.mobileNo,
        this.password,
        this.dob,
        this.address,
        this.specialist,
        this.location,
        this.regId,
        this.gender,
    });

   

    Map<String, dynamic> toJson() => {
        "name": name,
        "email_id": emailId,
        "mobile_no": mobileNo,
        "password": password,
        "dob": dob?.toIso8601String(),
        "address": address?.toJson(),
        "specialist": specialist,
        "location": location,
        "reg_id": regId,
        "gender": gender,
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

 

    Map<String, dynamic> toJson() => {
        "street": street,
        "city": city,
        "state": state,
        "district": district,
        "zipcode": zipcode,
    };
}
