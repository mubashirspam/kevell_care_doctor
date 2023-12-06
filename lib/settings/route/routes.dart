import 'package:flutter/material.dart';
import 'package:dr_kevell/pages/checkup/presentation/patient_checkup_screen.dart';
import 'package:dr_kevell/pages/profile/presentation/my_profile_screen.dart';
import 'package:dr_kevell/pages/profile/presentation/profile_screen.dart';
import 'package:dr_kevell/features/report/presetantion/pages/report_screen.dart';
import '../../../features/home/data/models/waiting_patient_model.dart';
import '../../pages/chat/presentation/chating_screen.dart';
import '../../pages/history/presentation/single_person_history_screen.dart';
import 'package:dr_kevell/features/report/data/model/report_model.dart'
    as report;

import '../../features/prescription/presentation/pages/create_prescription_screen.dart';
import '../../pages/dashborad/presentation/dashborad.dart';
import '../../pages/login_scrren/presentation/login_screen.dart';
import '../../pages/schedule/presentation/schedule_your_time.dart';
import '../../features/signup/presentation/pages/lsignup_screen.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final Map<String, Widget Function(BuildContext ctx)> route = {
  LoginScreen.routeName: (ctx) => const LoginScreen(),
  SignupScreen.routeName: (ctx) => const SignupScreen(),
  Dashboard.routeName: (ctx) => const Dashboard(),
  ScheduleYourTime.routeName: (ctx) => const ScheduleYourTime(),
  ProfileScreen.routeName: (ctx) => const ProfileScreen(),
  MyProfileScreen.routeName: (ctx) => const MyProfileScreen(),
  CreatePrescriptionScreen.routeName: (ctx) => CreatePrescriptionScreen(
        checkupDetalis:
            ModalRoute.of(ctx)!.settings.arguments as Map<String, dynamic>,
      ),
  ChatingScreen.routeName: (ctx) => ChatingScreen(
      chatParameter: ModalRoute.of(ctx)!.settings.arguments as Map),
  PatientCheckupScreen.routeName: (ctx) => PatientCheckupScreen(
        checkupDetalis:
            ModalRoute.of(ctx)!.settings.arguments as WaitingPatient,
      ),
  PersonHistroyScreen.routeName: (ctx) => PersonHistroyScreen(
        patientIdWithName:
            ModalRoute.of(ctx)!.settings.arguments as Map<String, dynamic>,
      ),
  ReportScreen.routeName: (ctx) => ReportScreen(
        data: ModalRoute.of(ctx)!.settings.arguments as report.Datum,
      ),
};
