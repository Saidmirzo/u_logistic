import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/features/auth/precentation/widgets/custom_tab_bar.dart';
import 'package:mlc_app/features/auth/precentation/widgets/login_part.dart';
import 'package:mlc_app/features/auth/precentation/widgets/sign_up_part.dart';

import '../../../../config/constants/all_constants.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              Assets.images.darkAppLogo,
              height: 106.h,
            ),
            CustomTabBar(tabController: tabController),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  LoginPart(tabController: tabController),
                  SignUpPart(tabController: tabController),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
