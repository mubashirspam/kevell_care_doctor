import 'dart:developer';
import 'dart:io';

import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/widgets/buttons/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';

import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../core/helper/toast.dart';
import 'bloc/profile_bloc.dart';

class UploadImagePage extends StatefulWidget {
  const UploadImagePage({super.key});

  @override
  State<UploadImagePage> createState() => _UploadImagePageState();
}

class _UploadImagePageState extends State<UploadImagePage> {
  String status = "";
  File? _selectedImage;
  bool isButtonDisabled = true;
  bool isLoading = false;

  Future<void> requestPermission(Permission permission) async {
    final status = await permission.request();

    log(status.toString());
  }

  Future<void> _selectImage(ImageSource source) async {
    final pickedImage =
        await ImagePicker().pickImage(source: source, imageQuality: 50);

    setState(() {
      if (pickedImage != null) {
        _selectedImage = File(pickedImage.path);
        isButtonDisabled = false;
      }
    });

    if (_selectedImage != null) {
      final appDir = await getApplicationDocumentsDirectory();
      const fileName = 'selected_image.jpg';
      await _selectedImage!.copy('${appDir.path}/$fileName');
    }
  }

  _cropImage(File imgFile) async {
    final croppedFile = await ImageCropper().cropImage(
        sourcePath: imgFile.path,
        aspectRatioPresets: Platform.isAndroid
            ? [
                CropAspectRatioPreset.square,
              ]
            : [
                CropAspectRatioPreset.square,
              ],
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: "Image Cropper",
              toolbarColor: Colors.deepOrange,
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(
            title: "Image Cropper",
          )
        ]);
    if (croppedFile != null) {
      imageCache.clear();
      setState(() {
        _selectedImage = File(croppedFile.path);
      });
      // reload();
    }
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.primary,
        title: Text(
          "Upload Image",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Column(
        children: [
          _selectedImage != null
              ? Expanded(
                  child: SizedBox(
                    width: w,
                    height: w,
                    child: Image.file(
                      _selectedImage!,
                      width: w,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              : Expanded(
                  child: SizedBox(
                    height: w,
                    width: w,
                    child: const Center(
                      child: Text(
                        'No image selected',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.all(20).copyWith(bottom: 100),
            child: BlocConsumer<ProfileBloc, ProfileState>(
              listener: (context, state) {
                if (!state.isUpdateLoading && state.isError) {
                  Toast.showToast(
                      context: context,
                      message: "Error occured try again later");
                }
                if (!state.isUpdateLoading && state.hasData) {
                  Toast.showToast(
                      context: context,
                      message: "Profile Updated Successfully");

                  Navigator.of(context).pop();
                }
              },
              builder: (context, state) {
                return TextButtonWidget(
                  onPressed: isButtonDisabled
                      ? null
                      : () {
                          if (_selectedImage != null && !state.isUpdateLoading) {
                            context.read<ProfileBloc>().add(
                                  ProfileEvent.uplaodImage(
                                    image: _selectedImage!,
                                  ),
                                );
                          }
                        },
                  name: "upload",
                  isLoading: state.isUpdateLoading,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: context.theme.primary),
            child: IconButton(
              onPressed: () async {
                _selectImage(ImageSource.camera);

                // Map<Permission, PermissionStatus> statuses = await [
                //   Permission.accessMediaLocation,
                //   Permission.storage,
                //   Permission.camera,
                // ].request();
                // if (statuses[Permission.storage]!.isGranted &&
                //     statuses[Permission.camera]!.isGranted) {
                //   _selectImage(ImageSource.camera);
                // } else {
                //   requestPermission(Permission.storage);
                //   requestPermission(Permission.camera);
                //   log('no permission provided');
                // }
              },
              icon: const Icon(
                Icons.camera,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 20),
          DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: context.theme.primary),
            child: IconButton(
              onPressed: () async {
                _selectImage(ImageSource.gallery);
                // Map<Permission, PermissionStatus> statuses = await [
                //   Permission.accessMediaLocation,
                //   Permission.storage,
                //   Permission.camera,
                // ].request();
                // if (statuses[Permission.storage]!.isGranted &&
                //     statuses[Permission.camera]!.isGranted) {
                //   _selectImage(ImageSource.gallery);
                // } else {
                //   requestPermission(Permission.storage);
                //   requestPermission(Permission.camera);
                //   log('no permission provided');
                // }
              },
              icon: const Icon(
                Icons.image,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
