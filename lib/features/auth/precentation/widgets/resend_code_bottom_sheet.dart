import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlc_app/config/widgets/custom_button.dart';
import 'package:mlc_app/l10n/locale_keys.g.dart';

import '../../../../config/constants/all_constants.dart';

class ResendCodeBottomSheet extends StatelessWidget {
  const ResendCodeBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330.h,
      padding: EdgeInsets.symmetric(vertical: 30.h),
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: Column(
        children: [
          SvgPicture.asset(Assets.icons.authMessage),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              LocaleKeys.code_not_arrive.tr(),
              style: AppTextStyles.body25w6,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            LocaleKeys.check_message.tr(),
            style: AppTextStyles.body15w4.copyWith(color: AppColors.grey),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          CustomButton(
            margin: EdgeInsets.symmetric(horizontal: 24.w),
            title: 'SMS’ni qayta yuborish',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
