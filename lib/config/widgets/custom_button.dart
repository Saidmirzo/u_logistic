import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/all_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.margin,
    this.color,
    this.isProgress = false,
    this.isActive = true,
  });
  final String title;
  final Function() onTap;
  final EdgeInsets? margin;
  final Color? color;
  final bool isProgress;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? const EdgeInsets.all(0),
      child: TextButton(
        onPressed: (isActive && !isProgress) ? onTap : () {},
        style: AppDecorations.buttonStyle(
          bgColor: isActive
              ? color ?? AppColors.primaryColor
              : AppColors.primaryColor.withOpacity(.5),
          borderRadius: 50.r,
          size: Size(double.maxFinite, 65.h),
        ),
        child: isProgress
            ? const CircularProgressIndicator()
            : Text(
                title,
                style: AppTextStyles.body18w5.copyWith(
                  color: color != null ? AppColors.black : AppColors.white,
                ),
              ),
      ),
    );
  }
}
