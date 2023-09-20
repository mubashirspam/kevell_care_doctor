// To parse this JSON data, do
//
//     final fetchReportPayload = fetchReportPayloadFromJson(jsonString);

import 'dart:convert';



String fetchReportPayloadToJson(FetchReportPayload data) => json.encode(data.toJson());

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
        "patientId": patientId,
        "StartingDate": "${startingDate!.year.toString().padLeft(4, '0')}-${startingDate!.month.toString().padLeft(2, '0')}-${startingDate!.day.toString().padLeft(2, '0')}",
        "EndingDate": "${endingDate!.year.toString().padLeft(4, '0')}-${endingDate!.month.toString().padLeft(2, '0')}-${endingDate!.day.toString().padLeft(2, '0')}",
    };
}
