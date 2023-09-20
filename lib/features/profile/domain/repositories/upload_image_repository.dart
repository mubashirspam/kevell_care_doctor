import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dr_kevell/features/profile/data/models/profile_model.dart';



import '../../../../core/failiar/main_failures.dart';

abstract class UploadImageRepository {
  Future<Either<MainFailure, ProfileModel>> uploaadImage({
    required File image,
  });
}
