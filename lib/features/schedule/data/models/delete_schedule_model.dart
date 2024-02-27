
class DeleteScheduleModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    DeleteScheduleModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory DeleteScheduleModel.fromJson(Map<String, dynamic> json) => DeleteScheduleModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

}

class Data {
    int? id;
    int? doctorId;
    DateTime? startDate;
    DateTime? endDate;
    int? dailyLimitCount;
    int? timePerPatient;
    String? type;
    String? month;
    String? year;
    DateTime? days;
    bool? isScheduleApproved;
    String? startTime;
    String? endTime;
    String? amount;
    String? location;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Data({
        this.id,
        this.doctorId,
        this.startDate,
        this.endDate,
        this.dailyLimitCount,
        this.timePerPatient,
        this.type,
        this.month,
        this.year,
        this.days,
        this.isScheduleApproved,
        this.startTime,
        this.endTime,
        this.amount,
        this.location,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        doctorId: json["doctor_id"],
        startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
        endDate: json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        dailyLimitCount: json["daily_limit_count"],
        timePerPatient: json["time_per_patient"],
        type: json["type"],
        month: json["month"],
        year: json["year"],
        days: json["days"] == null ? null : DateTime.parse(json["days"]),
        isScheduleApproved: json["is_schedule_approved"],
        startTime: json["start_time"],
        endTime: json["end_time"],
        amount: json["amount"],
        location: json["location"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );


}
