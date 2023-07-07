import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/features/profile/presentation/bloc/profile_bloc.dart';

import '../../widgets/error_widget.dart';
import '../../widgets/loading_widget.dart';
import 'widgets/profile_name_card.dart';

class ViewMyProfile extends StatelessWidget {
  const ViewMyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state.unauthorized) {}
      },
      buildWhen: (previous, current) {
        return current != previous;
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: LoadingWIdget());
        } else if (state.hasData) {
          return ViewMyProfileBlocBody(
            address: state.result!.data!.address ?? "",
            dob: state.result!.data!.dob ?? "",
            email: state.result!.data!.email ?? "",
            imgUrl: state.result!.data!.address ?? "",
            mobile: state.result!.data!.phone ?? "",
            name: state.result!.data!.fullName ?? "",
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
          const ProfileNameCard(
            email: "johndoe@gmail.com",
            imageUrl:
                "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2960&q=80",
            name: "Johndoe",
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
            child: Text("9562229979",
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
            child: Text("24 Jan 1988",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.normal)),
          ),
          Divider(color: context.theme.textGrey),
          Text("Adress", style: Theme.of(context).textTheme.headlineMedium),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text("24, Maruthu Pandiyar Street, Madurai - 20",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.normal)),
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
