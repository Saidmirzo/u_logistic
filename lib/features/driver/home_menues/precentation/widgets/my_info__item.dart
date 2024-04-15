import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/constants/all_constants.dart';

class MyInfoItem extends StatelessWidget {
  const MyInfoItem({
    super.key,
    required this.onTap,
    required this.isActive,
    required this.myInfoMenuModel,
  });
  final Function() onTap;
  final MyInfoMenuModel myInfoMenuModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14.r),
      child: Container(
        height: 65.h,
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
        decoration: BoxDecoration(
          border: Border.all(
            color: isActive ? AppColors.primaryColor : AppColors.yellowColor,
          ),
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Container(
          width: 145.w,
          decoration: BoxDecoration(
            color: AppColors.myInfoCardColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(myInfoMenuModel.icon),
              SizedBox(width: 5.w),
              Text(
                myInfoMenuModel.title,
                style: AppTextStyles.body17w4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
