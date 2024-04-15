import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlc_app/config/routes/routes.dart';
import 'package:mlc_app/config/widgets/custom_button.dart';
import 'package:mlc_app/l10n/locale_keys.g.dart';

import '../../../../config/constants/all_constants.dart';

class VerifyCodeBottomSheet extends StatelessWidget {
  const VerifyCodeBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .7,
      padding: EdgeInsets.only(bottom: 30.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 6.h,
            width: 70.w,
            margin: EdgeInsets.only(top: 11.h, bottom: 45.h),
            decoration: BoxDecoration(
              color: AppColors.dividerColor,
              borderRadius: BorderRadius.circular(30.r),
            ),
          ),
          SvgPicture.asset(Assets.icons.congratulations),
          Padding(
            padding: EdgeInsets.only(bottom: 10.h, top: 11.h),
            child: Text(
              LocaleKeys.congratulation.tr(),
              style: AppTextStyles.body25w6,
            ),
          ),
          Text(
            LocaleKeys.succesfull_sign.tr(),
            style: AppTextStyles.body16w5.copyWith(
              color: AppColors.textColor,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          CustomButton(
            margin: EdgeInsets.symmetric(horizontal: 24.w),
            title: LocaleKeys.go_main_page.tr(),
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                Routes.mainPage,
              );
            },
          )
        ],
      ),
    );
  }
}
