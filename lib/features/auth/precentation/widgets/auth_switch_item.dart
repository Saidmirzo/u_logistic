import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/config/constants/app_colors.dart';
import 'package:mlc_app/config/constants/app_text_styles.dart';

class AuthSwitchItem extends StatelessWidget {
  const AuthSwitchItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
  });
  final String title;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(50.r),
        child: Container(
          height: 48.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isActive ? AppColors.white : null,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Text(
            title,
            style: AppTextStyles.body16w5.copyWith(
              color: isActive ? AppColors.black : AppColors.textColor3,
            ),
          ),
        ),
      ),
    );
  }
}