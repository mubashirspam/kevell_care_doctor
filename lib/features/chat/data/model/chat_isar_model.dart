import 'package:isar/isar.dart';

part 'chat_isar_model.g.dart';

@collection
class ChatIsarPersonModel {
  Id? id; // you can also use id = null to auto increment

  @Index(type: IndexType.value)
  String? username;

  String? profileImagelink;
}

