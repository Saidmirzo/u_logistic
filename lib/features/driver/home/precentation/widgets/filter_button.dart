import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/constants/all_constants.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
    required this.text,
    required this.isActiev,
    required this.onTap,
    this.margin,
  });
  final String text;
  final bool isActiev;
  final Function() onTap;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ??  EdgeInsets.only(right: 12.w),
      child: TextButton(
        style: AppDecorations.buttonStyle(
          bgColor: isActiev ? AppColors.primaryColor : AppColors.white,
          borderRadius: 50,
          border: const BorderSide(color: AppColors.fieldBorderColor),
          padding: EdgeInsets.symmetric(horizontal: 23.w),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: AppTextStyles.body16w5.copyWith(
            color: isActiev ? AppColors.white : AppColors.textColor,
          ),
        ),
      ),
    );
  }
}
