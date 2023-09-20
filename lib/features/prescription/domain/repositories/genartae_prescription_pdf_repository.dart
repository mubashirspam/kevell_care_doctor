import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../data/model/prescription_pdf_model.dart';

abstract class GeneratePrescriptionPdfRepository {
  Future<Either<MainFailure, Uint8List>> genaratePdf({
    required PrescriptionPdfModel data,
  });
}
