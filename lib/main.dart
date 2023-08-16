import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care_dr/configure/route/routes.dart';
import 'package:kevell_care_dr/features/checkup/presentation/bloc/checkup_bloc.dart';
import 'package:kevell_care_dr/features/login/presentation/bloc/login_bloc.dart';
import 'package:kevell_care_dr/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:kevell_care_dr/features/signup/presentation/bloc/signup_bloc.dart';
import 'package:kevell_care_dr/pages/initialize/bloc/initialize_bloc.dart';
import 'package:kevell_care_dr/pages/initialize/initialize.dart';

import 'core/di/injectable.dart';
import 'core/them/dark_theme.dart';
import 'core/them/light_theme.dart';
import 'features/home/presentation/bloc/home_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  await configureInjeactable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<CheckupBloc>()),
        BlocProvider(create: (ctx) => getIt<SignupBloc>()),
        BlocProvider(create: (ctx) => getIt<LoginBloc>()),
        BlocProvider(create: (ctx) => getIt<ProfileBloc>()),
        BlocProvider(create: (ctx) => getIt<HomeBloc>()),
        BlocProvider(create: (context) => InitializeBloc()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: lightTheme(),
          darkTheme: darkTheme(),
          themeMode: ThemeMode.light,
          routes: route,
          home: const Initialize()),
    );
  }
}

