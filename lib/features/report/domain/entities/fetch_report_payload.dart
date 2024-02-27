

class FetchReportPayload {
    int? patientId;
    DateTime? startingDate;
    DateTime? endingDate;

    FetchReportPayload({
        this.patientId,
        this.startingDate,
        this.endingDate,
    });



    Map<String, dynamic> toJson() => {
        "patient_id": patientId,
        "from_date": "${startingDate!.year.toString().padLeft(4, '0')}-${startingDate!.month.toString().padLeft(2, '0')}-${startingDate!.day.toString().padLeft(2, '0')}",
        "to_date": "${endingDate!.year.toString().padLeft(4, '0')}-${endingDate!.month.toString().padLeft(2, '0')}-${endingDate!.day.toString().padLeft(2, '0')}",
    };
}
