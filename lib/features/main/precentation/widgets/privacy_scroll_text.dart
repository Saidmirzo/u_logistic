import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/config/constants/app_colors.dart';
import 'package:mlc_app/config/constants/app_text_styles.dart';
import 'package:mlc_app/config/constants/constants.dart';

class PrivacyScrollText extends StatefulWidget {
  const PrivacyScrollText({super.key});

  @override
  State<PrivacyScrollText> createState() => _PrivacyScrollTextState();
}

class _PrivacyScrollTextState extends State<PrivacyScrollText> {
  final ScrollController scrollController = ScrollController();
  double topOffset = 0;
  double maxOffset = 0;
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      maxOffset = scrollController.positions.last.maxScrollExtent;
      setState(() {
        topOffset = scrollController.offset / maxOffset * 450.h;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520.h,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              controller: scrollController,
              child: Text(
                Constants.privacyText,
                style: AppTextStyles.body16w4.copyWith(
                  color: AppColors.textColor,
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                width: 2.w,
                height: 520.h,
                color: AppColors.borderColor,
              ),
              Positioned(
                top: topOffset,
                child: Container(
                  width: 5.w,
                  height: 50.h,
                  color: AppColors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}