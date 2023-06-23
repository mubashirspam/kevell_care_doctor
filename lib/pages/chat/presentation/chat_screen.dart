import 'package:flutter/material.dart';

import '../../../features/chat/presentation/all_chat_list_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: AllChatListWidget(),
    );
  }
}
