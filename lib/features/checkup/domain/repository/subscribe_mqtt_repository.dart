import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../data/model/MQTTAppState.dart';

abstract class SubscribeRepository {
  Future<Either<MainFailure, bool>> subscribe({required String topic, required MQTTAppConnectionState state});
}
