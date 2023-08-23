import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/login/presentation/logout.dart';
import 'package:dr_kevell/features/profile/presentation/about.dart';
import 'package:dr_kevell/features/profile/presentation/darkmood.dart';
import 'package:dr_kevell/features/profile/presentation/faq.dart';
import 'package:dr_kevell/features/profile/presentation/notification.dart';
import 'package:dr_kevell/features/profile/presentation/settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../features/profile/presentation/bloc/profile_bloc.dart';
import '../../../features/profile/presentation/my_profile.dart';
import '../../../features/profile/presentation/widgets/profile_name_card.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
    });
    List<Widget> list = const [
      MyProfile(),
      Settings(),
      NotificationItem(),
      FAQ(),
      About(),
      DarkMode(),
    ];
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return SizedBox(
                    child: CircularProgressIndicator(
                      color: context.theme.primary,
                    ),
                  );
                }
                if (state.hasData) {
                  return ProfileNameCard(
                    email: state.result!.data!.email ?? "",
                    imageUrl:
                        "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2960&q=80",
                    name: state.result!.data!.name!,
                  );
                }

                return const ProfileNameCard(
                  email: "johndoe@gmail.com",
                  imageUrl:
                      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2960&q=80",
                  name: "Johndoe",
                );
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SizedBox(
                child: Column(
                  children: List.generate(
                    list.length,
                    (index) => list[index],
                  ),
                ),
              ),
            ),
            const Logout()
          ],
        ),
      ),
    );
  }
}
