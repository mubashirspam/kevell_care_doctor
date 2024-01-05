import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/helper/toast.dart';

import '../../../widgets/error_widget.dart';
import '../../data/models/profile_model.dart';
import '../bloc/profile_bloc.dart';

import '../upload_image.dart';
import 'edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
    });

    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) async {
        if (state.unauthorized) {
          Toast.showToast(
            context: context,
            message: "Please Login again ",
          );
          // await deleteFromSS(secureStoreKey)
          //     .then((value) => Navigator.of(context).pushAndRemoveUntil(
          //           MaterialPageRoute(
          //             builder: (context) => const Initialize(),
          //           ),
          //           (route) => false,
          //         ));
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: Shimmer.fromColors(
              baseColor: context.theme.secondary!,
              highlightColor: Colors.white,
              child: ProfileBody(
                isverified: false,
                profile: Profile(),
              ),
            ),
          );
        } else if (state.hasData) {
          return ProfileBody(
            profile: state.result!.data!,
            isverified: state.result!.data!.doctorApproved ?? false,
          );
        } else if (state.isError) {
          return const Center(child: AppErrorWidget());
        }
        return Center(
            child: ProfileBody(
          isverified: false,
          profile: Profile(),
        ));
      },
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
    required this.isverified,
    required this.profile,
  });

  final bool isverified;
  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            height: 170,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.maxFinite,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: context.theme.primary,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60, bottom: 5),
                          child: Text(
                            "Dr.${profile.name}",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(color: context.theme.backround),
                          ),
                        ),
                        Text(
                          "${profile.emailId}",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: context.theme.backround),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: context.theme.secondary,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: "${profile.profileImagelink}",
                            placeholder: (context, url) => Shimmer.fromColors(
                                baseColor: context.theme.secondary!,
                                highlightColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: context.theme.secondary,
                                )),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.image_not_supported_rounded),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 65,
                  right: 15,
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const UploadImagePage(),
                          ),
                        );
                      },
                      child: Text(
                        "EDIT",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: context.theme.secondary),
                      )),
                ),
                Positioned(
                  top: 65,
                  right: MediaQuery.of(context).size.width / 2 - 70,
                  child: CircleAvatar(
                    backgroundColor: context.theme.secondary,
                    radius: 13,
                    child: Icon(
                      isverified ? Icons.verified : Icons.cancel_outlined,
                      color: isverified ? Colors.green : Colors.red,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Basic Details",
                    style: Theme.of(context).textTheme.headlineMedium!),
                InkWell(
                    onTap: () {
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
                            adress: "address",
                            name: "name",
                            mobile: "11",
                            dob: "12/12/2023",
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "EDIT",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: context.theme.primary),
                    )),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Card(
              elevation: 0,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Colors.blue, // Replace with your desired color
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Username: ${mm["username"] ?? ""}",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors
                                  .white, // Replace with your desired color
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Email: ${mm["email"] ?? ""}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Mobile: ${mm["mobile"] ?? ""}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Password: ${mm["password"] ?? ""}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "DOB: ${mm["DOB"] ?? ""}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Specialist: ${mm["specialist"] ?? ""}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Location: ${mm["location"] ?? ""}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Registered ID: ${mm["registred_Id"] ?? ""}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    // Add more Padding widgets for other details
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final mm = {
  "username": "MSD",
  "email": "MSD@gmail.com",
  "mobile": "7770007700",
  "password": "msd@123",
  "DOB": "07/07/1983",
  "address": {
    "street": "123 Main St",
    "city": "Anytown",
    "district": "District ABC",
    "state": "CA",
    "zip_code": "12345"
  },
  "specialist": "Dentist",
  "location": "Madurai",
  "registred_Id": "akshfkh1937971329",
  "professionalInformation": {
    "licenseNumber": 123456666,
    "type_specialty": "ENT",
    "medicalSchool": "GOVT-MEDICAL-CLG THANJORE",
    "graduationYear": "2018",
    "boardCertification": "Indian Medical Council"
  },
  "practiceInformation": [
    {
      "clinic_name": "Sri Vignesh ENT",
      "street": "66th main road",
      "city": "TMM",
      "state": "Tamilnadu",
      "zip_code": "625019"
    },
    {
      "clinic_name": "Sri Vignesh ENT",
      "street": "66th main road",
      "city": "TMM",
      "state": "Tamilnadu",
      "zip_code": "625019"
    }
  ],
  "communication_preferences": {
    "communication_preferences": "Tamil",
    "languages_spoken": ["tamil", "english", "french", "telugu"]
  },
  "biography_and_specializations": {
    "bio": "Hi all I'm a ENT doctor",
    "specializations": "Ear Nose Throat "
  },
  "consent_and_agreement": {
    "terms_and_conditions_agreed": "TRUE",
    "data_processing_consent": "TRUE"
  }
};
