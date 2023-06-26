import 'package:flutter/material.dart';
import 'package:kevell_care_dr/features/chat/presentation/widgets/chat_person_card.dart';
import 'package:kevell_care_dr/pages/chat/presentation/chating_screen.dart';

class AllChatListWidget extends StatelessWidget {
  const AllChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(ChatingScreen.routeName),
          child: const ChatPersonCard()),
    );
  }
}