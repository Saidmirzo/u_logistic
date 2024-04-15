import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlc_app/config/constants/app_colors.dart';
import 'package:mlc_app/config/constants/app_text_styles.dart';
import 'package:mlc_app/config/constants/assets.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/cusrom_app_bar.dart';
import 'package:mlc_app/features/driver/profile/precentation/widgets/profile_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Profilim',
        onBack: () {},
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: 40.h),
          CircleAvatar(
            radius: 50.h,
            backgroundColor: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(Assets.images.defImage),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 5.h, bottom: 7.h),
            child: Text(
              'Abdullajon Abdullayev',
              style: AppTextStyles.body20w5,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.icons.call),
              Text(
                '+998 90 123 45 67',
                style: AppTextStyles.body20w6,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 22.h),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: AppColors.profileCardColor,
              border: Border.all(color: AppColors.cardBorderColor),
            ),
            child: Column(
              children: [
                ProfileItem(
                  onTap: () {},
                  title: 'Shaxsiy ma’lumotlarni tahrirlash',
                  icon: Assets.icons.keyColored,
                ),
                ProfileItem(
                  onTap: () {},
                  title: 'Qora rejim',
                  icon: Assets.icons.moonColored,
                ),
                ProfileItem(
                  onTap: () {},
                  title: 'Xabarnoma',
                  icon: Assets.icons.norificationColored,
                ),
                ProfileItem(
                  onTap: () {},
                  title: 'Yordam markazi',
                  icon: Assets.icons.messageColored,
                ),
                ProfileItem(
                  onTap: () {},
                  title: 'Parolni yangilash',
                  icon: Assets.icons.passwordColored,
                  isLast: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
