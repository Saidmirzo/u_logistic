import 'package:flutter/material.dart';
import 'package:mlc_app/config/constants/app_colors.dart';
import 'package:mlc_app/features/driver/home/precentation/pages/home_page.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/bottom_nav_bar.dart';
import 'package:mlc_app/features/driver/profile/precentation/pages/profile_page.dart';

class DriverMainPage extends StatelessWidget {
  DriverMainPage({super.key});
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          DriverHome(),
          DriverHome(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(pageController: pageController),
    );
  }
}
