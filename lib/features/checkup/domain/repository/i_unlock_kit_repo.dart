import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';


abstract class IUnloackKit {
  Future<Either<MainFailure, String>> getUnloackMessage();
}
