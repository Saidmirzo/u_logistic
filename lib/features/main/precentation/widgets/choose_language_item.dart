import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/constants/all_constants.dart';

class ChooseLanguageItem extends StatelessWidget {
  const ChooseLanguageItem({
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap,
    required this.icon,
  });
  final String text;
  final bool isActive;
  final String icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 62.h,
        margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 7.5.h),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: isActive ? AppColors.primaryColor : AppColors.borderColor,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(icon),
            SizedBox(width: 15.w),
            Text(text, style: AppTextStyles.body26w4),
            const Spacer(),
            isActive
                ? SvgPicture.asset(Assets.icons.tick)
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
