import 'package:dr_kevell/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/chat/presentation/all_chat_list_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_)  {


      context
          .read<ChatBloc>()
          .add(const ChatEvent.fetchChatProfile(id: "", isReloading: true));
    });
    return const SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: AllChatListWidget(),
    );
  }
}
