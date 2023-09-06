import 'dart:convert';
import 'dart:typed_data';
import 'package:dr_kevell/features/profile/presentation/upload_image.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

class ProfileNameCard extends StatelessWidget {
  final String name;
  final String email;
  final String imageUrl;
  const ProfileNameCard({
    required this.email,
    required this.imageUrl,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   
    Uint8List imageBytes = base64Decode(imageUrl);


    return Row(
      children: [
        SizedBox(
          height: 75,
          width: 75,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.memory(imageBytes,fit: BoxFit.cover,)),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const UploadImagePage(),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    maxRadius: 15,
                    minRadius: 15,
                    backgroundColor: context.theme.primary,
                    child: Icon(
                      Icons.edit,
                      size: 15,
                      color: context.theme.backround,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  email,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
