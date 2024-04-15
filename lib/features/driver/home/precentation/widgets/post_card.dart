import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlc_app/config/routes/routes.dart';
import 'package:mlc_app/features/driver/home/data/model/post_model.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/circle_outline_button.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/post_main_informations.dart';

import '../../../../../config/constants/all_constants.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.postModel,
  });
  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.postDetailPage);
      },
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 10.h),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 24.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.cardBorderColor,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          children: [
            PostMainInformations(postModel: postModel),
            const Divider(color: AppColors.cardBorderColor),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.id),
                  Text(
                    postModel.id.toString(),
                    style: AppTextStyles.body14w3.copyWith(
                      color: AppColors.cardBorderColor,
                    ),
                  ),
                  const Spacer(),
                  CircleOutlineButton(
                    onTap: () {},
                    size: 27,
                    borderColor: AppColors.cardBorderColor,
                    child: SvgPicture.asset(Assets.icons.comment),
                  ),
                  CircleOutlineButton(
                    onTap: () {},
                    size: 27,
                    borderColor: AppColors.cardBorderColor,
                    child: SvgPicture.asset(Assets.icons.save),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
