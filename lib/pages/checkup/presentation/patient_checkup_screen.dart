import 'package:dr_kevell/pages/checkup/presentation/widgets/checkup_body.dart';
import 'package:dr_kevell/settings/value/constant.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';
import '../../../features/home/data/models/waiting_patient_model.dart';
import '../../../settings/api/endpoints.dart';
import '../../../features/checkup/presentation/checkup_header.dart';
import '../../../features/video_call/service/signaling_service.dart';

class PatientCheckupScreen extends StatefulWidget {
  static const routeName = '/patient-checup-screen';

  final WaitingPatient checkupDetalis;

  const PatientCheckupScreen({
    super.key,
    required this.checkupDetalis,
  });

  @override
  State<PatientCheckupScreen> createState() => _PatientCheckupScreenState();
}

class _PatientCheckupScreenState extends State<PatientCheckupScreen> {
  int patientID = 0;
  int doctorID = 0;
  int appointmentID = 0;

  @override
  void initState() {
    patientID = widget.checkupDetalis.patientId!;
    doctorID = widget.checkupDetalis.doctorId!;
    appointmentID = widget.checkupDetalis.appointmentId!;

    SignallingService.instance.init(
      websocketUrl: ApiEndPoints.websocketUrl,
      selfCallerID: doctorID.toString(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPinnedHeader(
            child: CheckupHeaderWidget(
              name: widget.checkupDetalis.name ?? "No name found",
              type: widget.checkupDetalis.type ?? "No case found",
              imageUrl: widget.checkupDetalis.profileImagelink??"",
              paitentCallerId: patientID.toString(),
              selfCallerId: doctorID.toString(),
            ),
          ),
          PatientCheckupSBody(checkupDetalis: widget.checkupDetalis)
        ],
      ),
    );
  }
}
