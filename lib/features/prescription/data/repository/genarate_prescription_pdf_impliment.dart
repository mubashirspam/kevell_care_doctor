import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import '../../../../core/helper/date.dart';
import '../../../report/data/model/report_model.dart';

class GeneratePrescriptionPdfRepoImpliment {
  Future<pw.Document> generatePDF(
    List<ReportPrescription> prescription,
    Doctor doctorData,
    Patient patientData,
    DateTime apppoinmetDate,
  ) async {
    final img = await rootBundle.load('assets/images/logo.png');
    final imageBytes = img.buffer.asUint8List();
    pw.Image image1 = pw.Image(pw.MemoryImage(imageBytes));
    final pdf = pw.Document();
    final data = prescription;
    pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.start,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Container(height: 50, width: 50, child: image1),
                pw.SizedBox(width: 10),
                pw.Expanded(
                  child: pw.Container(
                    height: 50,
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          "Kevell Hospital",
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 18,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.SizedBox(height: 5),
                        pw.Text(
                          "Your Wellness, Our Priority.",
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 10,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                pw.Expanded(
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text(
                        doctorData.emailId ?? "",
                        style: pw.TextStyle(
                          color: PdfColors.black,
                          fontSize: 12,
                          fontWeight: pw.FontWeight.normal,
                        ),
                      ),
                      pw.SizedBox(height: 5),
                      pw.Text(
                        doctorData.specialist ?? "",
                        style: pw.TextStyle(
                          color: PdfColors.black,
                          fontSize: 12,
                          fontWeight: pw.FontWeight.normal,
                        ),
                      ),
                      pw.SizedBox(height: 5),
                      pw.Text(
                        "PH: ${doctorData.mobileNo ?? ""}",
                        style: pw.TextStyle(
                          color: PdfColors.black,
                          fontSize: 12,
                          fontWeight: pw.FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            pw.Container(
              height: 2,
              width: double.maxFinite,
              margin: const pw.EdgeInsets.symmetric(vertical: 20),
              color: PdfColors.green,
            ),
            pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              children: [
                pw.Expanded(
                  child: pw.Text(
                    "Patient Name : ${patientData.name??""}",
                    style: pw.TextStyle(
                      color: PdfColors.black,
                      fontSize: 12,
                      fontWeight: pw.FontWeight.normal,
                    ),
                  ),
                ),
                pw.Text(
                  "Age : ${calculateAge( patientData.dob??DateTime.now()) }",
                  style: pw.TextStyle(
                    color: PdfColors.black,
                    fontSize: 12,
                    fontWeight: pw.FontWeight.normal,
                  ),
                ),
                pw.SizedBox(width: 10),
                pw.Text(
                  "Gender : ${patientData.gender  ??""}",
                  style: pw.TextStyle(
                    color: PdfColors.black,
                    fontSize: 12,
                    fontWeight: pw.FontWeight.normal,
                  ),
                ),
                pw.SizedBox(width: 10),
                pw.Text(
                  "Date : ${dateFormatToddmmyyyy(apppoinmetDate)}",
                  style: pw.TextStyle(
                    color: PdfColors.black,
                    fontSize: 12,
                    fontWeight: pw.FontWeight.normal,
                  ),
                ),
              ],
            ),
            pw.SizedBox(height: 15),
            pw.Container(
              padding:
                  const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: PdfColors.greenAccent,
              child: pw.Row(
                children: [
                  pw.SizedBox(width: 50, child: heading("SNO")),
                  pw.Expanded(child: heading("Drug")),
                  pw.SizedBox(width: 50, child: heading("Morning")),
                  pw.SizedBox(width: 50, child: heading("Noon")),
                  pw.SizedBox(width: 50, child: heading("Evening")),
                  pw.SizedBox(width: 50, child: heading("Night")),
                  pw.SizedBox(width: 50, child: heading("Duration")),
                ],
              ),
            ),
            for (int i = 0; i < data.length; i++)
              pw.Container(
                padding:
                    const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: colors[i % colors.length],
                child: pw.Row(
                  children: [
                    pw.SizedBox(width: 50, child: content("${i + 1}")),
                    pw.Expanded(child: content(data[i].name.toString())),
                    pw.SizedBox(
                        width: 50,
                        child:
                            content(data[i].timeoftheday!.morning.toString())),
                    pw.SizedBox(
                        width: 50,
                        child: content(data[i].timeoftheday!.noon.toString())),
                    pw.SizedBox(
                        width: 50,
                        child:
                            content(data[i].timeoftheday!.evening.toString())),
                    pw.SizedBox(
                        width: 50,
                        child: content(data[i].timeoftheday!.night.toString())),
                    pw.SizedBox(
                        width: 50, child: content("${data[i].duration} Days")),
                  ],
                ),
              ),
            pw.Container(
              height: 2,
              width: double.maxFinite,
              margin: const pw.EdgeInsets.symmetric(vertical: 20),
              color: PdfColors.green,
            ),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.end,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  "Signature",
                  style: pw.TextStyle(
                    color: PdfColors.black,
                    fontSize: 12,
                    fontWeight: pw.FontWeight.normal,
                  ),
                ),
                pw.Text(
                  "  --------------",
                  style: pw.TextStyle(
                    color: PdfColors.black,
                    fontSize: 12,
                    fontWeight: pw.FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    ));

    return pdf;
  }

  static pw.Widget heading(String text) => pw.Text(
        text,
        style: pw.TextStyle(
          color: PdfColors.black,
          fontSize: 10,
          fontWeight: pw.FontWeight.normal,
        ),
      );

  static pw.Widget content(String text) => pw.Text(
        text,
        style: pw.TextStyle(
          color: PdfColors.black,
          fontSize: 10,
          fontWeight: pw.FontWeight.normal,
        ),
      );

  static List<PdfColor> colors = [
    PdfColors.green50,
    PdfColors.green100,
  ];
}
