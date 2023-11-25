import 'package:dartz/dartz.dart';
import 'package:dr_kevell/features/chat/data/model/chat_person_model.dart';

import '../../../../core/failiar/main_failures.dart';

abstract class FetchChatProfileRepository {
  Future<Either<MainFailure, ChatProfileModel>> fetchChatProfile({
    required String id,
  });
}

