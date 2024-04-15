import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/circle_outline_button.dart';

import '../../../../../config/constants/all_constants.dart';

class OperatorMainAppBar extends StatelessWidget {
  const OperatorMainAppBar({
    super.key,
    required this.funcNotific,
    this.onBack,
    this.title,
  });
  final Function() funcNotific;
  final Function()? onBack;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
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
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: onBack != null
                ? CircleOutlineButton(
                    onTap: onBack!,
                    padding: 3,
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      color: AppColors.white,
                    ),
                  )
                : Image.asset(
                    Assets.images.appLogo,
                    height: 40.h,
                    fit: BoxFit.fitWidth,
                  ),
          ),
          title != null
              ? Align(
                  child: Text(
                    title!,
                    style: AppTextStyles.body19w4.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          Align(
            alignment: Alignment.centerRight,
            child: CircleOutlineButton(
              onTap: () {},
              child: SvgPicture.asset(Assets.icons.notification),
            ),
          )
        ],
      ),
    );
  }
}
