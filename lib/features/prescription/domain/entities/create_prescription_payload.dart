// To parse this JSON data, do
//
//     final createPrescriptionPayload = createPrescriptionPayloadFromJson(jsonString);

import 'dart:convert';

import '../../data/model/prescription_model.dart';

String createPrescriptionPayloadToJson(CreatePrescriptionPayload data) =>
    json.encode(data.toJson());

class CreatePrescriptionPayload {
  int? doctorId;
  int? appointmentId;
  String? remark;
  List<Prescription>? prescription;


  void updatePrescription(int index, Prescription updatedPrescription) {
    if (prescription != null && index >= 0 && index < prescription!.length) {
      prescription![index] = updatedPrescription;
    }
  }

  // Method to add a new prescription to the list
  void addPrescription(Prescription newPrescription) {
    prescription ??= [];
    prescription!.add(newPrescription);
  }

  void removePrescription(int index) {
    prescription!.removeAt(index);
  }

  CreatePrescriptionPayload({
    this.doctorId,
    this.appointmentId,
    this.remark,
    this.prescription,
  });

  Map<String, dynamic> toJson() => {
        "doctorID": doctorId,
        "appointmentID": appointmentId,
        "remark": remark,
        "prescription": prescription == null
            ? []
            : List<dynamic>.from(prescription!.map((x) => x.toJson())),
      };
}



class Timeoftheday {
  String? morning;
  String? evening;
  String? noon;
  String? night;

  Timeoftheday({
    this.morning,
    this.evening,
    this.noon,
    this.night,
  });

  factory Timeoftheday.fromJson(Map<String, dynamic> json) => Timeoftheday(
        morning: json["morning"],
        evening: json["evening"],
        noon: json["noon"],
        night: json["night"],
      );

  Map<String, dynamic> toJson() => {
        "morning": morning,
        "evening": evening,
        "noon": noon,
        "night": night,
      };
}

class Tobetaken {
  String? name;
  bool? value;

  Tobetaken({
    this.name,
    this.value,
  });

  factory Tobetaken.fromJson(Map<String, dynamic> json) => Tobetaken(
        name: json["name"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
      };
}


