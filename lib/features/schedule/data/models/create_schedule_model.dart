

class CreateScheduleModel {
    int? responseCode;
    bool? status;
    String? message;
    Data? data;

    CreateScheduleModel({
        this.responseCode,
        this.status,
        this.message,
        this.data,
    });

    factory CreateScheduleModel.fromJson(Map<String, dynamic> json) => CreateScheduleModel(
        responseCode: json["responseCode"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

 
}

class Data {
    List<Result1>? result1;

    Data({
        this.result1,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        result1: json["result1"] == null ? [] : List<Result1>.from(json["result1"]!.map((x) => Result1.fromJson(x))),
    );

   
}

class Result1 {
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
    int? id;
    int? v;

    Result1({
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
        this.id,
        this.v,
    });

    factory Result1.fromJson(Map<String, dynamic> json) => Result1(
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
        id: json["_id"],
        v: json["__v"],
    );


}
