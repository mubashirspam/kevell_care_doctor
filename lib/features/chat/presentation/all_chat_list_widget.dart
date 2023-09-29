import 'package:dr_kevell/features/widgets/error_widget.dart';
import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/chat/presentation/widgets/chat_person_card.dart';
import 'package:dr_kevell/pages/chat/presentation/chating_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/chat_bloc.dart';

class AllChatListWidget extends StatelessWidget {
  const AllChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.hasData) {
          return ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushNamed(ChatingScreen.routeName),
                child: const ChatPersonCard()),
          );
        }
        if (state.isError) {
          return const AppErrorWidget();
        }
        if (state.isLoading) {
          return const Center(
            child: LoadingWIdget(),
          );
        }
        return const AppErrorWidget();
      },
    );
  }
}
