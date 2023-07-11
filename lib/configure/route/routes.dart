import 'package:flutter/material.dart';
import 'package:kevell_care_dr/pages/patien_checkup/presentation/patient_checkup_screen.dart';
import 'package:kevell_care_dr/pages/profile/presentation/my_profile_screen.dart';
import 'package:kevell_care_dr/pages/profile/presentation/profile_screen.dart';
import 'package:kevell_care_dr/pages/report/presentation/report_screen.dart';
import '../../pages/chat/presentation/chating_screen.dart';
import '../../pages/history/presentation/single_person_history_screen.dart';
import '../../pages/prescription/presentation/prescription_screen.dart';
import '../../pages/dashborad/presentation/dashborad.dart';
import '../../pages/login_scrren/presentation/login_screen.dart';
import '../../pages/schedule/presentation/schedule_your_time.dart';
import '../../pages/signup_screen/presentation/lsignup_screen.dart';
import '../../pages/videocall/presentation/one_to_one_meeting_screen.dart';



final Map<String, Widget Function(BuildContext)> route = {
  LoginScreen.routeName: (ctx) => const LoginScreen(),
  SignupScreen.routeName: (ctx) => const SignupScreen(),
  Dashboard.routeName: (ctx) => const Dashboard(),
  ScheduleYourTime.routeName: (ctx) => const ScheduleYourTime(),
  ProfileScreen.routeName: (ctx) => const ProfileScreen(),
  MyProfileScreen.routeName: (ctx) => const MyProfileScreen(),
  PrescriptionScreen.routeName: (ctx) => const PrescriptionScreen(),
  ChatingScreen.routeName: (ctx) => const ChatingScreen(),
  PatientCheckupScreen.routeName: (ctx) => const PatientCheckupScreen(),
  PersonHistroyScreen.routeName: (ctx) => const PersonHistroyScreen(),
  ReportScreen.routeName: (ctx) => const ReportScreen(),
  OneToOneMeetingScreen.routeName: (ctx) => const OneToOneMeetingScreen(
      displayName: "Mubashir", meetingId: "", token: ""),
};
