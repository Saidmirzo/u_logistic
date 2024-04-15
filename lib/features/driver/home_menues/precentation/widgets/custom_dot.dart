import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/config/constants/app_colors.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3.h,
      width: 3.h,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.black,
      ),
    );
  }
}