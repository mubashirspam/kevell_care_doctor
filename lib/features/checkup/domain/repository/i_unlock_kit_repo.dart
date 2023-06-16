import 'package:dartz/dartz.dart';
import 'package:mqtt_client/mqtt_client.dart';
import '../../../../core/failiar/main_failures.dart';


abstract class IUnloackKit {
  Future<Either<MainFailure, String>> getUnloackMessage();
}
