import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/constants/all_constants.dart';

class DateIndicator extends StatelessWidget {
  const DateIndicator({
    super.key,
    required this.date,
    this.isLarge = false,
  });
  final String date;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyTextColor),
          borderRadius: BorderRadius.circular(4.r)),
      child: Text(
        date,
        style: isLarge
            ? AppTextStyles.body12w4.copyWith(color: AppColors.textColor87)
            : AppTextStyles.body10w4.copyWith(color: AppColors.textColor87),
      ),
    );
  }
}
