import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/constants/all_constants.dart';

class BottomSendMessagePart extends StatelessWidget {
  const BottomSendMessagePart({
    super.key,
    required this.onTap,
    required this.message,
  });

  final Function() onTap;
  final TextEditingController message;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        height: 100.h,
        padding: EdgeInsets.symmetric(horizontal: 40.w).copyWith(bottom: 20.h),
        color: AppColors.buttonUnActiveBg,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: message,
                style: AppTextStyles.body16w4,
                decoration: InputDecoration(
                  hintStyle: AppTextStyles.body16w4.copyWith(
                    color: AppColors.grey,
                  ),
                  hintText: 'Habar yozish...',
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              onPressed: onTap,
              style: AppDecorations.buttonStyle(
                bgColor: AppColors.primaryColor,
                borderRadius: 50.r,
              ),
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
