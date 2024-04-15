import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/all_constants.dart';

class CustomWhiteButton extends StatelessWidget {
  const CustomWhiteButton({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65.h,
        width: double.maxFinite,
        margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(50.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor,
              offset: const Offset(0, 4),
              blurRadius: 40,
            ),
          ],
        ),
        child: Text(
          title,
          style: AppTextStyles.body18w5,
        ),
      ),
    );
  }
}