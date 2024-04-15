import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../config/constants/all_constants.dart';

class TextIconButton extends StatelessWidget {
  const TextIconButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
    this.margin,
    this.borderColor, this.width,
  });
  final Function() onTap;
  final String text;
  final String icon;
  final Color? borderColor;
  final EdgeInsets? margin;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? const EdgeInsets.all(0),
      child: TextButton.icon(
        onPressed: onTap,
        style: AppDecorations.buttonStyle(
          borderRadius: 50.r,
          size: Size(width?? 180.w, 41.h),
          bgColor: AppColors.white,
          border: BorderSide(color: borderColor ?? AppColors.grey),
        ),
        icon: SvgPicture.asset(icon),
        label: Text(
          text,
          style: AppTextStyles.body16w4,
        ),
      ),
    );
  }
}
