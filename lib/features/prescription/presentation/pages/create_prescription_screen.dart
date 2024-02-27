import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/prescription/domain/entities/create_prescription_payload.dart';
import 'package:dr_kevell/features/widgets/buttons/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/loading_widget.dart';

import '../bloc/precription_bloc.dart';
import '../widgets/prescription_item_widget.dart';
import 'edit_or_create_prescription.dart';

class CreatePrescriptionScreen extends StatelessWidget {
  static const routeName = '/prescription-screen';

  final Map<String, dynamic> checkupDetalis;
  const CreatePrescriptionScreen({
    super.key,
    required this.checkupDetalis,
  });

  @override
  Widget build(BuildContext context) {
    if (checkupDetalis['isEdit'] == "true") {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<PrecriptionBloc>().add(
            PrecriptionEvent.getPrescriptionList(
                appointmentId:
                    int.parse(checkupDetalis['appointmentID'].toString())));
      });
    }

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.theme.secondary),
            child: Center(
              child: Icon(
                Icons.chevron_left,
                color: context.theme.primary,
              ),
            ),
          ),
        ),
        backgroundColor: context.theme.backround,
        centerTitle: false,
        title: Text(
          "Prescriptions",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      floatingActionButton: Row(
        
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            child: BlocConsumer<PrecriptionBloc, PrecriptionState>(
              listener: (context, state) {
                if (state.created) {
                  Navigator.of(context).pop();
                }
              },
              builder: (context, state) {
                return TextButtonWidget(
                  boderRadius: 100,
                  name: "Submit",
                  onPressed: state.isCreateHasdata
                      ? () {
                          if (state.isCreateHasdata) {
                            CreatePrescriptionPayload prescriptionData =
                                state.createPrescriptionPayload!;
                
                            context.read<PrecriptionBloc>().add(
                                  PrecriptionEvent.createPrescription(
                                    payload: CreatePrescriptionPayload(
                                      appointmentId:
                                          checkupDetalis['appointmentID'],
                                      doctorId: checkupDetalis['doctorID'],
                                      patientId: checkupDetalis['patientID'],

                                      prescription:
                                          prescriptionData.prescription!,
                                      
                                    ),
                                  ),
                                );
                          }
                        }
                      : null,
                  isLoading: state.isGetLoading,
                );
              },
            ),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
              backgroundColor: context.theme.primary,
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EditOrCreatePrescription(
                      isEdit: false,
                      checkupDetalis: checkupDetalis,
                    ),
                  )),
              child: Icon(
                Icons.add,
                color: context.theme.backround,
              )),
        ],
      ),
      body: RefreshIndicator(onRefresh: () async {
        context.read<PrecriptionBloc>().add(
            PrecriptionEvent.getPrescriptionList(
                appointmentId:
                    int.parse(checkupDetalis['appointmentID'].toString())));
      }, child: BlocBuilder<PrecriptionBloc, PrecriptionState>(
        builder: (context, state) {
          if (state.isCreateLoading) {
            return const Center(
              child: LoadingWIdget(),
            );
          }

          if (state.isCreateHasdata) {
            if (state.createPrescriptionPayload != null) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: List.generate(
                    state.createPrescriptionPayload!.prescription!.length,
                    (index) => PrescriptionItemWidget(
                      index: index,
                      prescription:
                          state.createPrescriptionPayload!.prescription![index],
                      checkupDetalis: checkupDetalis,
                    ),
                  ),
                ),
              );
            } else {
              return Center(
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      Icon(
                        Icons.medical_services_outlined,
                        size: 50,
                        color: context.theme.inputFiled,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text('Their is no prescription added',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleLarge),
                      ),
                    ],
                  ),
                ),
              );
            }
          }
          return Center(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Icon(
                    Icons.medical_services_outlined,
                    size: 50,
                    color: context.theme.inputFiled,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text('Their is no prescription added',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                ],
              ),
            ),
          );
        },
      )),
    );
  }
}
