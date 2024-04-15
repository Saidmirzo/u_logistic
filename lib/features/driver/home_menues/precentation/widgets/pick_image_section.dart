import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/constants/all_constants.dart';

class PickImageSection extends StatelessWidget {
  const PickImageSection({
    super.key,
    this.image,
    required this.title,
  });

  final File? image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.body18w5),
          GestureDetector(
            onTap: () async {
              // final imagePicker = ImagePicker();
              // final XFile? xFile =
              //     await imagePicker.pickImage(source: ImageSource.gallery);
              // setState(() {
              //   image = File(xFile?.path ?? '');
              // });
            },
            child: Container(
              height: 150.h,
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 20.h, top: 10.h),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: image?.path == null
                  ? SvgPicture.asset(Assets.icons.setImage, fit: BoxFit.none)
                  : Image.file(image!),
            ),
          ),
        ],
      ),
    );
  }
}
