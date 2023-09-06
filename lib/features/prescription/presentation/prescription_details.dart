import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';

import '../data/model/prescription_list_model.dart';

class PrescriptionDetials extends StatelessWidget {
  final PrescriptionElement prescriptionElement;
  const PrescriptionDetials({super.key, required this.prescriptionElement});

  @override
  Widget build(BuildContext context) {
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
          "Prescription",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // LottieBuilder.asset(AppLottie.medicine),

          Text(
            prescriptionElement.name.toString(),
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 20),
          ),
          const SizedBox(height: 15),
          Text(
            'Remark',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 16),
          ),
          const SizedBox(height: 15),
          Text(
            prescriptionElement.remark.toString(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              duration(context, '${prescriptionElement.duration} Days',
                  Icons.calendar_month),
              const SizedBox(width: 15),
              duration(context, '${prescriptionElement.type} ',
                  Icons.medication_rounded)
            ],
          ),
          const SizedBox(height: 15),
          Text(
            'Time of the day',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 16),
          ),
          const SizedBox(height: 15),
          Wrap(
            children: List.generate(
                prescriptionElement.timeoftheday!.length,
                (index) => chipItem(
                      prescriptionElement.timeoftheday![index].value!,
                      prescriptionElement.timeoftheday![index].name!,
                      context,
                    )),
          ),
          const SizedBox(height: 15),
          Text(
            'To be Taken',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 16),
          ),
          const SizedBox(height: 15),
          Wrap(
            children: List.generate(
                prescriptionElement.tobetaken!.length,
                (index) => chipItem(
                      prescriptionElement.tobetaken![index].value!,
                      prescriptionElement.tobetaken![index].name!,
                      context,
                    )),
          ),
        ],
      ),
    );
  }

  Widget chipItem(bool isActive, String name, BuildContext context) => Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Chip(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor:
              isActive ? context.theme.primary : context.theme.secondary,
          label: Text(
            name,
            style: TextStyle(
              color: isActive ? context.theme.backround : context.theme.primary,
            ),
          ),
        ),
      );

  Widget duration(BuildContext context, String messge, IconData icon) =>
      Expanded(
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: context.theme.primary!,
                  width: 2,
                )),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: context.theme.primary,
                ),
                const SizedBox(width: 10),
                Text(
                  messge,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            )),
      );
}
