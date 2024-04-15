import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlc_app/core/helper_functions.dart';
import 'package:mlc_app/features/driver/home/data/model/post_model.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/cost_and_weight_row.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/date_indicator.dart';

import '../../../../../config/constants/all_constants.dart';

class PostMainInformations extends StatelessWidget {
  const PostMainInformations({
    super.key,
    required this.postModel,
  });
  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        children: [
          Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Image.asset(Assets.icons.flagUzb),
                    SizedBox(width: 5.w),
                    Text(
                      'UZB',
                      style: AppTextStyles.body9w4.copyWith(
                        color: AppColors.textColor87,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10.r),
                  child: Container(
                    height: 34.h,
                    width: 145.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: AppColors.primaryColor),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Assets.icons.profileBold,
                          color: AppColors.black,
                        ),
                        Text(
                          'So’rov qabul qilindi',
                          style: AppTextStyles.body13w5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: DateIndicator(
                  date:
                      HelperFunctions.formatTime('dd.MM.yyyy', postModel.time),
                  isLarge: true,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 58.h,
                width: 58.h,
                margin:
                    EdgeInsets.symmetric(vertical: 5.h).copyWith(right: 5.w),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.images.product1),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(Assets.icons.clock),
                        SizedBox(width: 5.w),
                        Text(
                          HelperFunctions.formatTime('HH:mm', postModel.time),
                          style: AppTextStyles.body10w4,
                        ),
                      ],
                    ),
                    Text(
                      postModel.name ?? "Unknown",
                      style: AppTextStyles.body20w5,
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, bottom: 8.h),
            child: Row(
              children: [
                SvgPicture.asset(Assets.icons.currLocation),
                Text(
                  postModel.pickUpAddress ?? "Unknown",
                  style: AppTextStyles.body18w5,
                ),
              ],
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(Assets.icons.location),
              Text(
                postModel.shippingAddress ?? "Unknown",
                style: AppTextStyles.body18w5,
              ),
            ],
          ),
          SizedBox(height: 10.h),
          const CostAndWeightRow(cost: 1590, weight: 20),
        ],
      ),
    );
  }
}
