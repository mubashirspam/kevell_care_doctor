import 'dart:developer';

import 'package:dr_kevell/features/widgets/error_widget.dart';
import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/chat/presentation/widgets/chat_person_card.dart';
import 'package:dr_kevell/pages/chat/presentation/chating_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/model/chat_person_model.dart';
import '../domain/chat_service.dart';
import '../domain/db_helper.dart';
import 'bloc/chat_bloc.dart';

class AllChatListWidget extends StatefulWidget {
  const AllChatListWidget({super.key});

  @override
  State<AllChatListWidget> createState() => _AllChatListWidgetState();
}

class _AllChatListWidgetState extends State<AllChatListWidget> {
  Map<int, List<Map<String, dynamic>>> sortedData = {};
  final dbHelper = DatabaseHelper();

  @override
  void initState() {
    ChatService.instance.init(userId: 1014);

    ChatService.instance.socket!.on("get-users", (data) {
      log("get-users called ======= $data");
      if (mounted) {
     
        setState(() {});
      }
    });
    ChatService.instance.socket!.on("offline-messages", (response) {
      if (mounted) {
        setState(() {
          addReceivedMessages(response);
          log("offline-messages $sortedData");
        });
      }
    });

    super.initState();
  }

  void addReceivedMessages(response) async {
    await dbHelper.open().then((value) async {
      for (var item in response) {
        final from = item["from"];
        final msg = item["msg"];
        final time = item["time"];
        if (!sortedData.containsKey(from)) {
          sortedData[from] = [];
        }

        await dbHelper.insertMessage(from, msg, time);
        sortedData[from]!.add({"msg": msg, "time": time});
      }
    });
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
                    onTap: () {
                      // setState(() => count == null);

                      Navigator.of(context).pushNamed(ChatingScreen.routeName,
                          arguments: {
                            'from': 1014,
                            'to': 1003,
                            'oldMessage': sortedData[id]
                          });
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
