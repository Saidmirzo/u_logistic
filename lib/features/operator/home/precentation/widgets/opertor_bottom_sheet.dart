import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/constants/all_constants.dart';

class OperatorBottomNavBar extends StatefulWidget {
  const OperatorBottomNavBar({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  State<OperatorBottomNavBar> createState() => _OperatorBottomNavBarState();
}

class _OperatorBottomNavBarState extends State<OperatorBottomNavBar> {
  int activeIndex = 0;
  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(() {
      setState(() {
        activeIndex = widget.pageController.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      enableFeedback: false,
      onTap: (index) {
        widget.pageController.animateToPage(index,
            duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      },
      currentIndex: activeIndex,
      selectedLabelStyle: AppTextStyles.body12w4.copyWith(
        color: AppColors.primaryColor,
      ),
      selectedItemColor: AppColors.primaryColor,
      unselectedLabelStyle:
          AppTextStyles.body12w4.copyWith(color: AppColors.textColor),
      items: [
        BottomNavigationBarItem(
          label: 'Asosiy',
          icon: SvgPicture.asset(Assets.icons.home),
          activeIcon: SvgPicture.asset(Assets.icons.homeBold),
        ),
        BottomNavigationBarItem(
          label: "E'lon berish",
          icon: SvgPicture.asset(Assets.icons.postIcon),
          activeIcon: SvgPicture.asset(Assets.icons.postIcon),
        ),
        BottomNavigationBarItem(
          label: "Xarita",
          icon: SvgPicture.asset(Assets.icons.profile),
          activeIcon: SvgPicture.asset(Assets.icons.profileBold),
        ),
        BottomNavigationBarItem(
          label: "Profil",
          icon: SvgPicture.asset(Assets.icons.profile),
          activeIcon: SvgPicture.asset(Assets.icons.profileBold),
        ),
      ],
    );
  }
}
