import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';

abstract class UnloackRepository {
  Future<Either<MainFailure, bool>> unloack({
    required Map<String, dynamic> payload,
    required String topic,
  });
}
