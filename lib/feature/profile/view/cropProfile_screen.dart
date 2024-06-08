import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_snackbar.dart';
import 'package:mitra_sports_teckzy/feature/profile/controller/editProfile_controller.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CropProfileScreen extends StatefulWidget {
  final String imagePath;

  const CropProfileScreen({Key? key, required this.imagePath})
      : super(key: key);

  @override
  State<CropProfileScreen> createState() => _CropProfileScreenState();
}

class _CropProfileScreenState extends State<CropProfileScreen> {
  final EditProfileController _editProfileController =
      Get.put(EditProfileController());
  File? _croppedFile;

  @override
  void initState() {
    super.initState();
    _cropImage();
  }

  Future<void> _cropImage() async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: widget.imagePath,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: AppColor.blueColor,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
        WebUiSettings(
          context: context,
        ),
      ],
    );

    if (croppedFile != null) {
      setState(() {
        _croppedFile = File(croppedFile.path);
      });
    } else {
      Get.back();
    }
  }

  Future<void> _saveProfile() async {
    if (_croppedFile != null) {
      // Convert File to PlatformFile
      final platformFile = PlatformFile(
        path: _croppedFile!.path,
        name: _croppedFile!.path.split('/').last, // Get the file name
        size: await _croppedFile!.length(),
      );
      await _editProfileController.UpdateProfile(profilePhoto: platformFile);
    } else {
      // Show some error message or handle the case where no image is selected
      CustomSnackBar.showCustomErrorSnackBar(
        title: 'Error',
        message: 'No image selected.',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: GradientText(
          'Update Profile',
          style: TextStyle(
            fontSize: 20.sp,
            fontFamily: "poppinssemibold",
          ),
          colors: const [
            Color(0xff141356),
            Color(0xff0095DA),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveProfile,
          ),
        ],
      ),
      body: Center(
        child: _croppedFile != null
            ? Image.file(_croppedFile!)
            : const CircularProgressIndicator(),
      ),
    );
  }
}
