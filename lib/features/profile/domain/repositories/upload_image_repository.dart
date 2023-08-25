import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:dr_kevell/features/profile/data/models/upload_image_model.dart';

import '../../../../core/failiar/main_failures.dart';

abstract class UploadImageRepository {
  Future<Either<MainFailure, UploadedImageModel>> uploaadImage({
    required File image,
  });
}
