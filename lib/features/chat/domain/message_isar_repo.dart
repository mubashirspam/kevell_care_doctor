import 'dart:async';


import 'package:isar/isar.dart';

import '../data/model/message_isar_model.dart';

class MessageIsarRepo {
  MessageIsarRepo._();
  static final instance = MessageIsarRepo._();

  Future<void> saveMessage(
      MessageIsar message, int userId, String userName) async {
    var isar = Isar.getInstance('db');
    final messageListCollection = isar!.collection<MessageListIsarModel>();

    await isar.writeTxn(() async {
      List<MessageListIsarModel> existingMessageList =
          await messageListCollection.where().userIdEqualTo(userId).findAll();

      if (existingMessageList.isNotEmpty) {
        List<MessageIsar> updatedMessages =
            List<MessageIsar>.from(existingMessageList.first.messages!)
              ..add(message);

        var updatedMessageList = MessageListIsarModel()
          ..id = existingMessageList.first.id
          ..userId = existingMessageList.first.userId
          ..userName = existingMessageList.first.userName
          ..messages = updatedMessages;

        await messageListCollection.put(updatedMessageList);
      } else {
        await messageListCollection.put(MessageListIsarModel()
          ..userId = userId
          ..userName = userName
          ..messages = [message]);
      }
    });
  }

// Function to get messages of a particular user
  Future<List<MessageIsar>> fetchMessages(int userId) async {
    var isar = Isar.getInstance('db');
    final messageListCollection = isar!.collection<MessageListIsarModel>();

    List<MessageListIsarModel> userMessageList =
        await messageListCollection.where().userIdEqualTo(userId).findAll();

    if (userMessageList.isNotEmpty) {
      final messages = userMessageList.first.messages;

      if (messages != null) {
        return messages;
      } else {
        return [];
      }
    } else {
      return [];
    }
  }

  // Future<ChatProfileModel?> getChatProfile() async {
  //   var isar = Isar.getInstance('db');

  //   final profileCollection = isar!.collection<ChatIsarPersonModel>();

  //   final chatIsarPersonModels = await profileCollection
  //       .where()
  //       .findAll(); // Get all items from the collection

  //   final chatProfileModel = ChatProfileModel(
  //     responseCode: 200,
  //     success: true,
  //   );
  //   chatProfileModel.result =
  //       chatIsarPersonModels.first.recipients?.map((result) {
  //     return Result()
  //       ..id = result.id
  //       ..username = result.username
  //       ..profileImagelink = result.profileImagelink;
  //   }).toList();

  //   return chatProfileModel;
  // }
}
