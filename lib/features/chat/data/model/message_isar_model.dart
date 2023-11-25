import 'package:isar/isar.dart';

part 'message_isar_model.g.dart';

@collection
class MessageListIsarModel {
  Id? id;
  @Index(type: IndexType.value)
  int? userId;
  String? userName;

  List<MessageIsar>? messages;
}

@embedded
class MessageIsar {
  String? message;
  DateTime? time; // Add a field for time
  bool isReceiving = false; // Add a field for isReceiving with a default value
  MessageIsar({
    this.message,
    this.time,
    this.isReceiving = false,
  });
}

// @collection
// class MessageIsarModel {
//   Id? id;

//   @Index(type: IndexType.value)
//   String? message;

//   DateTime? time;

//   bool? isReceiving;

//   int? userId; // This is the user id to which the message belongs
// }
