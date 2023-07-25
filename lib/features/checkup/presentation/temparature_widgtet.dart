import 'package:flutter/material.dart';
import 'package:dr_kevell/features/checkup/presentation/widgets/checkup_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/model/MQTTAppState.dart';
import 'bloc/checkup_bloc.dart';

class TepamratureWidget extends StatelessWidget {
  const TepamratureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckupBloc, CheckupState>(
      builder: (context, state) {
        return CheckupCard(
          // imageName: "imageName",
          name: "Body Temperature",
          onPress: () {
            state.isSucribed == true
                ? context.read<CheckupBloc>().add(CheckupEvent.gettemperature(
                        topic: "KC_EC94CB6F61DC/device",
                        payload: {
                          "id": "KC_EC94CB6F61DC",
                          "patientID": "P8308",
                          "doctorID": "D1204",
                          "appointmentID": "AP123456",
                          "type": "Doctor",
                          "command": "device",
                          "number": 2,
                          "date": DateTime.now().millisecondsSinceEpoch
                        }))
                : null;
          },
          children: [
            Text(MQTTAppState().getReceivedJson['data'] == null
                ? "Reading..."
                : "${MQTTAppState().getReceivedJson['data']['content']}"),
            Text(
              "0.00°F",
              style: Theme.of(context).textTheme.headlineLarge,
            )
          ],
        );
      },
    );
  }
}
