import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlc_app/features/driver/home/data/model/post_model.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/post_detail_widgets/text_icon_button.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/post_main_informations.dart';

import '../../../../../../config/constants/all_constants.dart';

class ActiveOrderCard extends StatelessWidget {
  const ActiveOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 10.h),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.cardBorderColor,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          children: [
             PostMainInformations(postModel: PostModel(),),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.icons.profileBold,
                    color: AppColors.blue100,
                  ),
                  Text(
                    'Abdullajon Abdullayev',
                    style: AppTextStyles.body20w5.copyWith(
                      color: AppColors.blue100,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextIconButton(
                  onTap: () {},
                  text: 'Qo’ng’iriq qilish',
                  icon: Assets.icons.phone,
                  borderColor: AppColors.primaryColor,
                  margin: EdgeInsets.only(left: 16.w),
                ),
                TextIconButton(
                  onTap: () {},
                  text: "Joylashuv",
                  icon: Assets.icons.outlineLocation,
                  margin: EdgeInsets.only(right: 16.w),
                )
              ],
            ),
            TextIconButton(
              onTap: () {},
              text: "Joylashuv",
              width: double.maxFinite,
              icon: Assets.icons.outlineLocation,
              margin: EdgeInsets.symmetric(horizontal: 16.w),
            )
          ],
        ),
      ),
    );
  }
}
