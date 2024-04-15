import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/config/constants/all_constants.dart';
import 'package:mlc_app/config/routes/routes.dart';
import 'package:mlc_app/features/main/precentation/widgets/choose_language_item.dart';
import 'package:mlc_app/features/main/precentation/widgets/copy_right_text.dart';

class ChooseLanguagePage extends StatefulWidget {
  const ChooseLanguagePage({super.key});

  @override
  State<ChooseLanguagePage> createState() => _ChooseLanguagePageState();
}

class _ChooseLanguagePageState extends State<ChooseLanguagePage> {
  int activeIndex = 1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              Assets.images.darkAppLogo,
              height: 106.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h, bottom: 10.h),
              child: Text(
                'welcome'.tr(),
                style: AppTextStyles.body28w6,
                textAlign: TextAlign.center,
              ),
            ),
            Text('select_language'.tr(), style: AppTextStyles.body22w5),
            SizedBox(height: 50.h),
            ...List.generate(
              3,
              (index) => ChooseLanguageItem(
                icon: Constants.listLanguages[index].icon,
                text: Constants.listLanguages[index].title,
                onTap: () {
                  context.setLocale(getFunction(index));
                  setState(() {
                    activeIndex = index;
                  });
                },
                isActive: index == activeIndex,
              ),
            ),
            const Spacer(),
            const CopyRightText()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        child: const Icon(
          Icons.arrow_forward,
          color: AppColors.white,
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, Routes.privacyPolicePage);
        },
      ),
    );
  }

  Locale getFunction(int index) {
    switch (index) {
      case 0:
        return const Locale('uz');
      case 1:
        return const Locale('en');
      case 2:
        return const Locale('ru');
      default:
        return const Locale('en');
    }
  }
}
