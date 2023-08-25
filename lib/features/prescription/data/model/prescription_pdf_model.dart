


import '../../../report/data/model/report_model.dart';

class PrescriptionPdfModel {
    int? doctorId;
    int? appointmentId;
    int? patientId;
    int? pno;
    String? name;
    String? type;
    String? duration;
    List<Timeoftheday>? timeoftheday;
    List<Timeoftheday>? tobetaken;
    String? remark;

  PrescriptionPdfModel({
    this.doctorId,
    this.appointmentId,
    this.patientId,
    this.name,
    this.type,
    this.duration,
    this.timeoftheday,
    this.tobetaken,
    this.remark,

  });
    PrescriptionPdfModel.fromPrescriptionElement(Prescription element) {
    doctorId = element.doctorId;
    appointmentId = element.appointmentId;
    patientId = element.patientId;
    name = element.name;
    type = element.type;
    duration = element.duration;
    timeoftheday = element.timeoftheday;
    tobetaken = element.tobetaken;
    remark = element.remark;
    pno = element.pno;
  }
}
