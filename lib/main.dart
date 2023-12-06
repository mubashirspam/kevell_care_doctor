import 'dart:developer';
import 'dart:io';

import 'package:dr_kevell/firebase_options.dart';
import 'package:dr_kevell/pages/initialize/initialize.dart';
import 'package:dr_kevell/settings/value/secure_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'core/di/injectable.dart';
import 'core/helper/toast.dart';
import 'core/notifications/push_notification.dart';
import 'core/them/dark_theme.dart';
import 'core/them/light_theme.dart';
import 'features/chat/data/model/chat_isar_model.dart';
import 'features/chat/data/model/message_isar_model.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/prescription/presentation/bloc/precription_bloc.dart';
import 'features/report/presetantion/bloc/report_bloc.dart';
import 'features/schedule/presentation/bloc/schedule_bloc.dart';
import 'features/checkup/presentation/bloc/checkup_bloc.dart';
import 'features/login/presentation/bloc/login_bloc.dart';
import 'features/profile/presentation/bloc/profile_bloc.dart';
import 'features/signup/presentation/bloc/signup_bloc.dart';
import 'features/chat/presentation/bloc/chat_bloc.dart';
import 'features/history/presentation/bloc/history_bloc.dart';
import 'pages/initialize/bloc/initialize_bloc.dart';
import 'settings/route/routes.dart';
import 'settings/value/constant.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (Platform.isAndroid) {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await PushNotification().initNoticatin();
  // }

  await configureInjeactable();
  await getTokenFromSS(secureStoreKey).then((value) => log("token : $value"));

  if (!kIsWeb) {
    Future<Directory?>? dir;
    dir = getApplicationSupportDirectory();
    final Directory? directory = await dir;
    await Isar.open(
      name: 'db',
      [ChatIsarPersonModelSchema, MessageListIsarModelSchema],
      directory: '${directory?.path}',
    );
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<CheckupBloc>()),
        BlocProvider(create: (ctx) => getIt<CheckupBloc>()),
        BlocProvider(create: (ctx) => getIt<SignupBloc>()),
        BlocProvider(create: (ctx) => getIt<LoginBloc>()),
        BlocProvider(create: (ctx) => getIt<ProfileBloc>()),
        BlocProvider(create: (ctx) => getIt<HomeBloc>()),
        BlocProvider(create: (ctx) => getIt<HistoryBloc>()),
        BlocProvider(create: (ctx) => getIt<PrecriptionBloc>()),
        BlocProvider(create: (ctx) => getIt<ReportBloc>()),
        BlocProvider(create: (ctx) => getIt<ScheduleBloc>()),
        BlocProvider(create: (ctx) => getIt<ChatBloc>()),
        BlocProvider(create: (ctx) => InitializeBloc()),
      ],
      child: MaterialApp(
        scaffoldMessengerKey: scaffoldMessengerKey,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.light,
        navigatorKey: navigatorKey,
        routes: route,
        home: const Initialize(),

        // home: const CreatePrescriptionScreen(
        //     checkupDetalis: {"appointmentID": 1289, "doctorID": 1045}),
        // home: const PrecriptionPreview(),
      ),
    );
  }
}
