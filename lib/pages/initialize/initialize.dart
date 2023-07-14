import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:dr_kevell/pages/dashborad/presentation/dashborad.dart';
import 'package:dr_kevell/pages/initialize/bloc/initialize_bloc.dart';
import 'package:dr_kevell/pages/login_scrren/presentation/login_screen.dart';

class Initialize extends StatelessWidget {
  const Initialize({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<InitializeBloc>(context)
          .add(const InitializeEvent.initial());
      // context.read<HelpCenterBloc>().add(const HelpCenterEvent.initial());
    });
    return BlocBuilder<InitializeBloc, InitializeState>(
      buildWhen: (previous, current) {
        return previous != current;
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Scaffold(body: Center(child: LoadingWIdget()));
        } else if (state.isToken) {
          return const Dashboard();
        } else if (!state.isToken) {
          return const LoginScreen();
        } else {
          return const Scaffold(body: Center(child: LoadingWIdget()));
        }
      },
    );
  }
}
