import 'dart:io';


import 'package:path_provider/path_provider.dart';

import 'package:pdf/widgets.dart' as pw;

import '../model/prescription_pdf_model.dart';

class GeneratePrescriptionPdfRepoImpliment {
  Future<pw.Document> generatePDF(List<PrescriptionPdfModel> data) async {
    final pdf = pw.Document();

    final tableRows = <pw.TableRow>[];

    for (var entry in data) {
      tableRows.add(pw.TableRow(
        decoration: pw.BoxDecoration(border: pw.Border.all(width: 0.5)),
        children: [
          pw.Text(entry.name ?? ''),
          pw.Text(entry.type ?? ''),

          pw.Row(
            children: List.generate(
                entry.timeoftheday!.length,
                (index) => pw.Row(children: [
                      pw.Text(entry.timeoftheday![index].name!,
                          style: pw.TextStyle(
                            fontSize: 8,
                            fontWeight: pw.FontWeight.normal,
                          )),
                      pw.SizedBox(width: 5),
                      pw.Checkbox(
                        value: entry.timeoftheday![index].value!,
                        name: entry.timeoftheday![index].name!,
                      ),
                      pw.SizedBox(width: 5),
                    ])),
          ),
          pw.Row(
            children: List.generate(
                entry.tobetaken!.length,
                (index) => pw.Row(children: [
                      pw.Text(entry.tobetaken![index].name!,
                          style: pw.TextStyle(
                            fontSize: 8,
                            fontWeight: pw.FontWeight.normal,
                          )),
                      pw.SizedBox(width: 5),
                      pw.Checkbox(
                        value: entry.tobetaken![index].value!,
                        name: entry.tobetaken![index].name!,
                      ),
                      pw.SizedBox(width: 5),
                    ])),
          ),

          pw.Text(entry.duration ?? ''),

          // Add more cells as needed
        ],
      ));
    }

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                "Prescription",
                style: const pw.TextStyle(
                  fontSize: 16,
                ),
              ),
              pw.Row(
                children: [
                  pw.Text(
                    "Patient Information",
                    style: pw.TextStyle(
                        fontSize: 14, fontWeight: pw.FontWeight.bold),
                  ),
                ],
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 15),
                child: pw.Row(
                  children: [
                    pw.Text(
                      "Appoinment No : ",
                      style: pw.TextStyle(
                          fontSize: 14, fontWeight: pw.FontWeight.bold),
                    ),
                    pw.Text(
                      data.first.appointmentId.toString(),
                      style: const pw.TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 15),
                child: pw.Row(
                  children: [
                    pw.Text(
                      "Patient Name : ",
                      style: pw.TextStyle(
                          fontSize: 14, fontWeight: pw.FontWeight.bold),
                    ),
                    pw.Text(
                      data.first.name.toString(),
                      style: const pw.TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              pw.SizedBox(height: 50),
              pw.Table(
            
                border: pw.TableBorder.all(width: 0.5),
                columnWidths: {
                  0: const pw.FlexColumnWidth(1),
                  1: const pw.FlexColumnWidth(1),
                  2: const pw.FlexColumnWidth(4),
                  3: const pw.FlexColumnWidth(3),
                  4: const pw.FlexColumnWidth(0.5),
                },
                children: [
                  pw.TableRow(
                    children: [
                      pw.Text('Name',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                      pw.Text('Type',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),

                      pw.Text('Time',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                      pw.Text('To be Taken',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),

                      pw.Text('days',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                      // Add more headers as needed
                    ],
                  ),
                  ...tableRows,
                ],
              ),
            ],
          );
        },
      ),
    );

    // Save the PDF to a file
    final bytes = await pdf.save();
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/statement.pdf');
    await file.writeAsBytes(bytes);

    return pdf;
  }

  pw.Widget _buildTable(PrescriptionPdfModel entry, pw.Context context) {
    final tableData = [
      ['Name', entry.name],
      ['Type', entry.type],
      ['Duration', entry.duration],
      // Add more rows as needed
    ];

    return pw.TableHelper.fromTextArray(
      context: context,
      data: tableData,
      tableWidth: pw.TableWidth.min,
      border: null,
    );
  }
}
