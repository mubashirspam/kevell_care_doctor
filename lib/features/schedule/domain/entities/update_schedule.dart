
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
        "start_time": starttime?.toIso8601String(),
        "end_time": endtime?.toIso8601String(),
        "daily_limit_count": dailylimitcount,
        "time_per_patient": timeperPatient,
      };
}
