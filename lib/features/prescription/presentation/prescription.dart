

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../configure/value/constant.dart';
import '../../../configure/value/secure_storage.dart';
import '../../../core/helper/toast.dart';
import '../../../pages/initialize/initialize.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/loading_widget.dart';
import 'bloc/precription_bloc.dart';
import 'widgets/prescription_item_widget.dart';

class Prescription extends StatelessWidget {
  const Prescription({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PrecriptionBloc, PrecriptionState>(
      listener: (context, state) async {
        if (state.unauthorized) {
          Toast.showToast(
            context: context,
            message: "Unauthrized",
          );
          await deleteFromSS(secureStoreKey)
              .then((value) => Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const Initialize(),
                    ),
                    (route) => false,
                  ));
        } else if (state.isError) {
          Toast.showToast(context: context, message: "Network Error");
        }
      },
      listenWhen: (previous, current) {
        return previous != current;
      },
      builder: (context, state) {
        if (state.isGetLoading) {
          return const Center(
            child: LoadingWIdget(),
          );
        }

        if (state.hasData) {
          if (state.prescriptionResult!.data==null) {
            return SizedBox(
              child: Column(
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
                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: const Size(65, 30),
                      backgroundColor: context.theme.primary,
                      foregroundColor: context.theme.backround,
                    ),
                    child: const Text("Edit"),
                    onPressed: () {},
                  )
                ],
              ),
            );
          }
        } else {
          return ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20).copyWith(bottom: 0),
            itemCount: 3,
            itemBuilder: (context, index) => const PrescriptionItemWidget(
              subTitle: "subtitle",
              title: "titlw",
            ),
            separatorBuilder: (context, index) => Divider(
              color: context.theme.textGrey,
            ),
          );
        }
         return const Center(child: AppErrorWidget());
      },
    );
  }
}
