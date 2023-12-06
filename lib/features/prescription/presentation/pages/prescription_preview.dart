

import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';


class PrecriptionPreview extends StatelessWidget {
  const PrecriptionPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: InteractiveViewer(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset("assets/images/logo.png")),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: SizedBox(
                            height: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kevell Hospital",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Your Wellness, Our Priority.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Dr.Mubashir Ahammed",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "MBBS (Ortho)",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "PH:9562229979",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    width: double.maxFinite,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    color: Colors.green,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          "Patient Name : Mubashir",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Text(
                        "Age : 23",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Gender : Male",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Date : 20/12/2023",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    color: Colors.greenAccent,
                    child: Row(
                      children: [
                        SizedBox(width: 50, child: heading("SNO")),
                        Expanded(child: heading("Drug")),
                        SizedBox(width: 50, child: heading("Morning")),
                        SizedBox(width: 50, child: heading("Noon")),
                        SizedBox(width: 50, child: heading("Evening")),
                        SizedBox(width: 50, child: heading("Night")),
                        SizedBox(width: 50, child: heading("Duration")),
                      ],
                    ),
                  ),
                  Column(
                    children: List.generate(10, (index) {
                      Color itemColor = colors[index % colors.length];
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        color: itemColor,
                        child: Row(
                          children: [
                            SizedBox(width: 50, child: content("${index + 1}")),
                            Expanded(child: content("Paracetamol 500mg")),
                            SizedBox(width: 50, child: content("1")),
                            SizedBox(width: 50, child: content("1")),
                            SizedBox(width: 50, child: content("0")),
                            SizedBox(width: 50, child: content("1")),
                            SizedBox(width: 50, child: content("10 Days")),
                          ],
                        ),
                      );
                    }),
                  ),
                  Container(
                    height: 2,
                    width: double.maxFinite,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    color: Colors.green,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr Signature",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        "  --------------",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        // generatePDFDummy(context);
                      },
                      child: const Text("data"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget heading(String text) => Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      );

  Widget content(String text) => Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      );
}

List<Color> colors = [
  Colors.green.shade50,
  Colors.green.shade100,
];



// class PdfViewerPage extends StatelessWidget {
//   final String pdfPath;

//   const PdfViewerPage({Key? key, required this.pdfPath}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:const Text('Prescription'),
//       ),
//       body: PDFView(
//         filePath: pdfPath,
//         enableSwipe: true,
//         swipeHorizontal: true,
//         autoSpacing: false,
//         pageSnap: true,
//         defaultPage: 0,
//         fitPolicy: FitPolicy.BOTH,
//         preventLinkNavigation: false,
//         onRender: (pages) {
//           log("Rendered $pages pages.");
//         },
//         onError: (error) {
//           log(error);
//         },
//         onPageError: (page, error) {
//           log('Error while loading page $page: $error');
//         },
//         onViewCreated: (PDFViewController pdfViewController) {
//           // You can use the controller to perform additional actions if needed
//         },
//       ),
//     );
//   }
// }
