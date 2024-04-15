import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/config/constants/all_constants.dart';
import 'package:mlc_app/config/routes/routes.dart';
import 'package:mlc_app/config/widgets/custom_button.dart';
import 'package:mlc_app/features/main/precentation/widgets/copy_right_text.dart';
import 'package:mlc_app/features/main/precentation/widgets/privacy_scroll_text.dart';

class PrivacyPolicePage extends StatefulWidget {
  const PrivacyPolicePage({super.key});

  @override
  State<PrivacyPolicePage> createState() => _PrivacyPolicePageState();
}

class _PrivacyPolicePageState extends State<PrivacyPolicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Assets.images.darkAppLogo,
              height: 106.h,
            ),
            Text(
              "usage_argiments".tr(),
              style: AppTextStyles.body29w4,
            ),
            const PrivacyScrollText(),
            CustomButton(
              title: 'agree'.tr(),
              margin:
                  EdgeInsets.symmetric(horizontal: 24.w).copyWith(top: 30.h),
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, Routes.authPage);
              },
            ),
            const Spacer(),
            const CopyRightText()
          ],
        ),
      ),
    );
  }
}
