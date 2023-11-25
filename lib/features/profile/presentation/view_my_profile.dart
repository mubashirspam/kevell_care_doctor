import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/profile/presentation/bloc/profile_bloc.dart';

import '../../../core/helper/date.dart';
import '../../widgets/buttons/text_button_widget.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/loading_widget.dart';
import 'edit_profile.dart';
import 'widgets/profile_name_card.dart';

class ViewMyProfile extends StatelessWidget {
  const ViewMyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state.unauthorized) {}
      },
      // buildWhen: (previous, current) {
      //   return current != previous;
      // },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: LoadingWIdget());
        } else if (state.hasData) {
          return ViewMyProfileBlocBody(
            address: state.result!.data!.address ?? "No Adress",
            dob: state.result!.data!.dob.toString(),
            email: state.result!.data!.email ?? "",
            imgUrl: state.result!.data!.profileImagelink!,
            mobile: state.result!.data!.mobileNo ?? "No mobile",
            name: state.result!.data!.name ?? "",
          );
        } else if (state.isError) {
          return const Center(child: AppErrorWidget());
        }
        return const Center(child: AppErrorWidget());
      },
    );
  }
}

class ViewMyProfileBlocBody extends StatelessWidget {
  final String name;
  final String email;
  final String imgUrl;
  final String mobile;
  final String dob;
  final String address;

  const ViewMyProfileBlocBody({
    required this.address,
    required this.dob,
    required this.email,
    required this.imgUrl,
    required this.mobile,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileNameCard(
            email: email,
            imageUrl: imgUrl,
            name: name,
          ),
          const SizedBox(
            height: 30,
          ),
          Text("Basic Detail",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.normal)),
          const SizedBox(
            height: 25,
          ),
          Text("Mobile", style: Theme.of(context).textTheme.headlineMedium),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(mobile,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.normal)),
          ),
          Divider(color: context.theme.textGrey),
          Text("Date of Birth",
              style: Theme.of(context).textTheme.headlineMedium),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(dateFormatToDDmonthYYYY(dob),
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.normal)),
          ),
          Divider(color: context.theme.textGrey),
          Text("Adress", style: Theme.of(context).textTheme.headlineMedium),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(address,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.normal)),
          ),
          const Spacer(),
          TextButtonWidget(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                useSafeArea: true,
                elevation: 0,
                isScrollControlled: true,
                context: context,
                builder: (context) => Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: EditMyProfile(
                    adress: address,
                    name: name,
                    mobile: mobile,
                    dob: dob,
                  ),
                ),
              );
            },
            name: "Edit Profile",
            isLoading: false,
          ),
        ],
      ),
    );
  }
}
