class SchedulePayload {
  int? doctorId;
  String? starttime;
  String? type;
  String? endtime;
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
        "starttime": starttime,
        "endtime": endtime,
        "StartingDate": startingDate,
        "EndingDate": endingDate,
        "timeperPatient": timeperPatient,
        "dailylimitcount": dailylimitcount,
      };
}
