class SchedulePayload {
  int? doctorId;
  String? type;
  DateTime? startTime;
  DateTime? endTime;
  DateTime? startDate;
  DateTime? endDate;
  String? dailyLimitCount;
  int? timePerPatient;
  String? location;
  String? amount;

  SchedulePayload({
    this.doctorId,
    this.type,
    this.startTime,
    this.endTime,
    this.startDate,
    this.endDate,
    this.dailyLimitCount,
    this.timePerPatient,
    this.location,
    this.amount,
  });

  Map<String, dynamic> toJson() => {
        "doctor_id": doctorId,
        "type": type,
        "start_time": startTime?.toIso8601String(),
        "end_time": endTime?.toIso8601String(),
        "start_date":
            "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
        "daily_limit_count": dailyLimitCount,
        "time_per_patient": timePerPatient,
        "location": location,
        "amount": amount,
      };
}
