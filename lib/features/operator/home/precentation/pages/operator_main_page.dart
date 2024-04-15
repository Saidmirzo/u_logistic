import 'package:flutter/material.dart';
import 'package:mlc_app/config/constants/app_colors.dart';
import 'package:mlc_app/features/operator/home/precentation/pages/create_post_page.dart';
import 'package:mlc_app/features/operator/home/precentation/pages/opertaor_home_page.dart';
import 'package:mlc_app/features/operator/home/precentation/widgets/opertor_bottom_sheet.dart';

class OperatorMainPage extends StatelessWidget {
  OperatorMainPage({super.key});
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          OperatorHomePage(),
          CreatePostPage(),
          OperatorHomePage(),
          OperatorHomePage(),
        ],
      ),
      bottomNavigationBar: OperatorBottomNavBar(pageController: pageController),
    );
  }
}
