import 'dart:async';
import 'dart:developer';

import 'package:isar/isar.dart';

import '../data/model/chat_isar_model.dart';
import '../data/model/chat_person_model.dart';

class ChatIsarRepo {
  ChatIsarRepo._();
  static final instance = ChatIsarRepo._();

 

 Future<void> postChatProfile(List<Result>? chatProfiles) async {
  if (chatProfiles == null || chatProfiles.isEmpty) {
    return; // No data to process
  }

  var isar = Isar.getInstance('db');
  final profileCollection = isar!.collection<ChatIsarPersonModel>();

  // Convert chatProfiles to a Map for easy lookup
  final chatProfilesMap = {
    for (var profile in chatProfiles) profile.id: profile
  };

  await isar.writeTxn(() async {
    // Get all existing data
    final allData = await profileCollection.where().findAll();

    for (var existingData in allData) {
      if (chatProfilesMap.containsKey(existingData.id)) {
        // Data exists in API, update it
        final result = chatProfilesMap[existingData.id];

        existingData.username = result!.username;
        existingData.profileImagelink = result.profileImagelink;

        await profileCollection.put(existingData);
        log("Updated ${existingData.id}");

        // Remove from map so we know what's left to insert
        chatProfilesMap.remove(existingData.id);
      } else {
        // Data doesn't exist in API, delete it
        await profileCollection.delete(existingData.id!);
        log("Deleted ${existingData.id}");
      }
    }

    // What's left in chatProfilesMap are new entries, insert them
    for (var result in chatProfilesMap.values) {
      ChatIsarPersonModel data =  ChatIsarPersonModel();
      data.id=result.id;
       data.username = result.username;
        data.profileImagelink = result.profileImagelink;
      await profileCollection.put(data);
      log("Inserted ${result.id}");
    }
  });
}



Future<ChatProfileModel?> getChatProfile() async {
  var isar = Isar.getInstance('db');

  final profileCollection = isar!.collection<ChatIsarPersonModel>();

  final chatIsarPersonModels = await profileCollection
      .where()
      .findAll(); // Get all items from the collection

  final chatProfileModel = ChatProfileModel(
    responseCode: 200,
    success: true,
  );

  chatProfileModel.result = chatIsarPersonModels.map((result) {
    return Result()
      ..id = result.id
      ..username = result.username
      ..profileImagelink = result.profileImagelink;
  }).toList();

  return chatProfileModel;
}

  Future<void> deleteAllData() async {
    var isar = Isar.getInstance('db');
    final profileCollection = isar!.collection<ChatIsarPersonModel>();
    int deletedCount = 0;
    await isar.writeTxn(() async {
      deletedCount =
          await profileCollection.deleteAll([1005, 1006, 1003, 1004]);
    });

    log('$deletedCount  data deleted from ChatIsarPersonModel collection.');
  }


}
