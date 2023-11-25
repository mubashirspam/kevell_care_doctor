import 'dart:developer';

import 'package:dr_kevell/features/widgets/error_widget.dart';
import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/chat/presentation/widgets/chat_person_card.dart';
import 'package:dr_kevell/pages/chat/presentation/chating_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../settings/value/constant.dart';
import '../../../settings/value/secure_storage.dart';
import '../data/model/chat_person_model.dart';
import '../data/model/message_isar_model.dart';
import '../domain/chat_service.dart';
import '../domain/message_isar_repo.dart';
import 'bloc/chat_bloc.dart';

class AllChatListWidget extends StatefulWidget {
  const AllChatListWidget({
    super.key,
  });

  @override
  State<AllChatListWidget> createState() => _AllChatListWidgetState();
}

class _AllChatListWidgetState extends State<AllChatListWidget> {
  Map<int, List<Map<String, dynamic>>> sortedData = {};

  @override
  void initState() {
    chatServiceIniti();

    super.initState();
  }

  void chatServiceIniti() async {
    await ChatService.instance.init();

    ChatService.instance.socket!.on("get-users", (data) {
      log("get-users called ======= $data");
      if (mounted) {
        setState(() {});
      }
    });
    ChatService.instance.socket!.on("offline-messages", (response) {
      if (mounted) {
        setState(() {
          log("offline-messages called");
          addReceivedMessages(response);
        });
      }
    });
  }

  void addReceivedMessages(response) async {
    final id = await getFromSS(drIdsecureStoreKey);
    if (id != null) {
      log("db opened");
      for (var item in response) {
        final from = item["from"];
        final msg = item["msg"];
        final time = DateTime.parse(item["time"]);
        if (!sortedData.containsKey(from)) {
          sortedData[from] = [];
        }

        MessageIsarRepo.instance.saveMessage(
            MessageIsar(message: msg, time: time, isReceiving: false),
            int.parse(id),
            "thulasiraman");
      }

      if (mounted) {
        setState(() {
          log("offline-messages $sortedData");
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.hasData) {
          List<Result> profiles = state.result!.result ?? [];

          return ListView.builder(
              itemCount: profiles.length,
              itemBuilder: (context, index) {
                final id = profiles[index].id;
                int? count;
                if (sortedData.containsKey(id)) {
                  count = sortedData[id]!.length;
                }
                return GestureDetector(
                    onTap: () async {
                   final token=   await getFromSS(fcmStoreKey);
                      await getFromSS(drIdsecureStoreKey).then((value) =>
                          Navigator.of(context)
                              .pushNamed(ChatingScreen.routeName, arguments: {
                            'data': profiles[index],
                            'from': int.parse(value!),
                            'to': profiles[index].id,
                            'token': token
                          }));
                    },
                    child: ChatPersonCard(
                      result: profiles[index],
                      count: count,
                    ));
              });
        }
        if (state.isError) {
          return const AppErrorWidget();
        }
        if (state.isLoading && !state.hasData) {
          return const Center(
            child: LoadingWIdget(),
          );
        }
        return const AppErrorWidget();
      },
    );
  }
}
