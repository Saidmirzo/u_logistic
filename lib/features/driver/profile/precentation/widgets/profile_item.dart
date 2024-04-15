import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/constants/all_constants.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
    this.isLast = false,
    this.hasSwitch = false,
  });
  final Function() onTap;
  final String title;
  final String icon;
  final bool isLast;
  final bool hasSwitch;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(icon),
              SizedBox(width: 10.w),
              Text(
                title,
                style: AppTextStyles.body13w5,
              ),
              const Spacer(),
              hasSwitch
                  ? Switch(
                      value: true,
                      activeColor: AppColors.primaryColor,
                      inactiveThumbColor: AppColors.white,
                      
                      onChanged: (value) {},
                    )
                  : SvgPicture.asset(Assets.icons.doubleArrow),
            ],
          ),
          !isLast
              ? Divider(
                  height: 40.h,
                  endIndent: 40.w,
                  indent: 40.w,
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
