import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/constants/all_constants.dart';

class CostAndWeightRow extends StatelessWidget {
  const CostAndWeightRow({
    super.key,
    this.cost,
    this.weight,
    this.color,
  });
  final int? cost;
  final int? weight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        cost != null
            ? SvgPicture.asset(
                Assets.icons.cost,
              )
            : const SizedBox.shrink(),
        cost != null
            ? Padding(
                padding: EdgeInsets.only(left: 5.w, right: 16.w),
                child: Text(
                  cost.toString(),
                  style: AppTextStyles.body14w4
                      .copyWith(color: color ?? AppColors.textColor87),
                ),
              )
            : const SizedBox.shrink(),
        SvgPicture.asset(
          Assets.icons.weight,
        ),
        SizedBox(width: 5.w),
        Text(
          '$weight tonna/kub',
          style: AppTextStyles.body14w4
              .copyWith(color: color ?? AppColors.textColor87),
        ),
      ],
    );
  }
}
