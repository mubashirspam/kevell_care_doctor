// To parse this JSON data, do
//
//     final updateSchedulePayload = updateSchedulePayloadFromJson(jsonString);

import 'dart:convert';

String updateSchedulePayloadToJson(UpdateSchedulePayload data) =>
    json.encode(data.toJson());

class UpdateSchedulePayload {
  String? id;
  DateTime? starttime;
  DateTime? endtime;
  String? dailylimitcount;
  String? timeperPatient;

  UpdateSchedulePayload({
    this.id,
    this.starttime,
    this.endtime,
    this.dailylimitcount,
    this.timeperPatient,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
        "starttime": starttime?.toIso8601String(),
        "endtime": endtime?.toIso8601String(),
        "dailylimitcount": dailylimitcount,
        "timeperPatient": timeperPatient,
      };
}
