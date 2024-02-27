import 'package:cached_network_image/cached_network_image.dart';
import 'package:dr_kevell/features/profile/presentation/upload_image.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:shimmer/shimmer.dart';

class ProfileNameCard extends StatelessWidget {
  final String name;
  final String email;
  final String imageUrl;
  final bool isverified;
  const ProfileNameCard({
    required this.email,
    required this.imageUrl,
    required this.name,
    required this.isverified,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 65,
          width: 65,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: imageUrl,
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
        Icon(
          isverified ? Icons.verified : Icons.cancel_outlined,
          color: isverified ? Colors.green : Colors.red,
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}
