import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlc_app/config/routes/routes.dart';
import 'package:mlc_app/core/helper_functions.dart';
import 'package:mlc_app/features/driver/home/data/model/post_model.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/cost_and_weight_row.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/date_indicator.dart';

import '../../../../../config/constants/all_constants.dart';

class CurrentProductCard extends StatelessWidget
    implements PreferredSizeWidget {
  const CurrentProductCard({
    super.key,
    required this.postModel,
  });
  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.activeOrderPage);
      },
      child: Container(
        color: AppColors.primaryColor,
        padding: EdgeInsets.only(bottom: 23.h),
        child: Container(
          height: 95.h,
          width: double.maxFinite,
          padding: EdgeInsets.all(10.h),
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(14.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(Assets.icons.flagUzb),
                  SizedBox(width: 5.w),
                  Text(
                    'UZB',
                    style: AppTextStyles.body9w4.copyWith(
                      color: AppColors.textColor87,
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(Assets.icons.clock),
                  SizedBox(width: 5.w),
                  Text(
                    HelperFunctions.formatTime('HH:mm:ss', postModel.time),
                    style: AppTextStyles.body10w4,
                  ),
                ],
              ),
              Text(postModel.name ?? "UNknown", style: AppTextStyles.body20w4),
              Row(
                children: [
                  const CostAndWeightRow(
                    cost: 1590,
                    weight: 12,
                  ),
                  Spacer(),
                  DateIndicator(
                    date: HelperFunctions.formatTime(
                      'E dd.MM.yyyy',
                      postModel.time,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(118.h);
}
