// import 'package:dr_kevell/features/profile/presentation/view_my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:dr_kevell/features/dashborad/presentation/dashborad.dart';
import 'package:dr_kevell/pages/initialize/bloc/initialize_bloc.dart';
import 'package:dr_kevell/features/login/presentation/pages/login_screen.dart';

import '../../features/dashborad/presentation/widgets/bottom_navigation.dart';
import '../../features/profile/presentation/pages/profile_screen.dart';

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
          if (state.isVerified) {
            return const Dashboard();
          }
          return const Scaffold(body: SafeArea(child: ProfileScreen()));
        } else if (!state.isToken) {
          selectedIndexNorifier.value == 0;
          return const LoginScreen();
        } else {
          return const Scaffold(body: Center(child: LoadingWIdget()));
        }
      },
    );
  }
}
