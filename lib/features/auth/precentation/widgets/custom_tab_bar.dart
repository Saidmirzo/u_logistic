import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/features/auth/precentation/widgets/auth_switch_item.dart';
import 'package:mlc_app/l10n/locale_keys.g.dart';

import '../../../../config/constants/all_constants.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    super.key,
    required this.tabController,
  });
  final TabController tabController;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(() {
      setState(() {
        activeIndex = widget.tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      padding: EdgeInsets.all(5.h),
      decoration: BoxDecoration(
        color: AppColors.lightGreyColor,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Row(
        children: [
          AuthSwitchItem(
            title: LocaleKeys.log_in.tr(),
            isActive: activeIndex == 0,
            onTap: () {
              widget.tabController.animateTo(0);
            },
          ),
          AuthSwitchItem(
            title: LocaleKeys.registration.tr(),
            isActive: activeIndex == 1,
            onTap: () {
              widget.tabController.animateTo(1);
            },
          ),
        ],
      ),
    );
  }
}
