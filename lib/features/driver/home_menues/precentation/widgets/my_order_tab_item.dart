import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/constants/all_constants.dart';

class MyOrderTabItem extends StatelessWidget {
  const MyOrderTabItem({
    super.key,
    required this.ontap,
    required this.title,
    required this.count,
    required this.isActive,
    required this.index,
  });
  final Function() ontap;
  final String title;
  final int count;
  final bool isActive;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Column(
          children: [
            Text(
              title,
              style: AppTextStyles.body18w4.copyWith(
                color: isActive ? AppColors.primaryColor : AppColors.black,
              ),
            ),
            Container(
              height: 52.h,
              // width: 142.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: index == 1
                    ? const Border.symmetric(
                        vertical: BorderSide(color: AppColors.grey),
                      )
                    : null,
                color: isActive
                    ? AppColors.primaryColor
                    : AppColors.fieldBorderColor,
                borderRadius: getBorder(),
              ),
              child: Text(
                count.toString(),
                style: AppTextStyles.body20w5.copyWith(
                  color: isActive ? AppColors.white : AppColors.textColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  BorderRadiusGeometry? getBorder() {
    switch (index) {
      case 0:
        return BorderRadius.only(
          topLeft: Radius.circular(10.r),
          bottomLeft: Radius.circular(10.r),
        );
      case 1:
        return null;
      case 2:
        return BorderRadius.only(
          topRight: Radius.circular(10.r),
          bottomRight: Radius.circular(10.r),
        );

      default:
        return BorderRadius.only(
          topLeft: Radius.circular(10.r),
          bottomLeft: Radius.circular(10.r),
        );
    }
  }
}
