import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/circle_outline_button.dart';

import '../../../../../config/constants/all_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, required this.onBack});
  final String title;
  final Function() onBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h).copyWith(top: 40.h),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        image: DecorationImage(
          image: AssetImage(
            Assets.images.appBarBg,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CircleOutlineButton(
              onTap: onBack,
              padding: 3,
              child: const Icon(
                Icons.arrow_back_rounded,
                color: AppColors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: AppTextStyles.body20w5.copyWith(color: AppColors.white),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80.h);
}
