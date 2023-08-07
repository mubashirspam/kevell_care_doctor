import 'dart:convert';

String schedulePayloadToJson(SchedulePayload data) =>
    json.encode(data.toJson());

class SchedulePayload {
  int? doctorId;
  DateTime? starttime;
  String? type;
  DateTime? endtime;
  String? startingDate;
  String? endingDate;

  int? timeperPatient;
  String? dailylimitcount;

  SchedulePayload({
    this.doctorId,
    this.starttime,
    this.endtime,
    this.startingDate,
    this.type,
    this.dailylimitcount,
    this.endingDate,
    this.timeperPatient,
  });

  Map<String, dynamic> toJson() => {
        "doctor_id": doctorId,
        "type": type,
        "starttime": starttime?.toIso8601String(),
        "endtime": endtime?.toIso8601String(),
        "StartingDate": startingDate,
        "EndingDate": endingDate,
        "timeperPatient": timeperPatient,
        "dailylimitcount": dailylimitcount,
      };
}
