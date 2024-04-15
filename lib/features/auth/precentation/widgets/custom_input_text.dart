import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlc_app/config/widgets/custom_textfield.dart';

import '../../../../config/constants/all_constants.dart';

class CustomInputText extends StatelessWidget {
  const CustomInputText({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.isPassword = false,
    this.icon,
    this.margin,
    this.textInputType,
    this.textInputFormatter,
    this.validator,
    this.autoFocus,
    this.focusNode,
    this.borderColor,
  });
  final String title;
  final String hintText;
  final bool isPassword;
  final String? icon;
  final EdgeInsets? margin;
  final TextEditingController controller;
  final TextInputType? textInputType;
  final TextInputFormatter? textInputFormatter;
  final String? Function(String? value)? validator;
  final bool? autoFocus;
  final FocusNode? focusNode;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.body18w5),
          CustomTextField(
            key: key,
            borderColor: borderColor,
            focusNode: focusNode,
            validator: validator,
            inputFormatters:
                textInputFormatter != null ? [textInputFormatter!] : null,
            textInputType: textInputType,
            margin: EdgeInsets.only(top: 10.h, bottom: 15.h),
            controller: controller,
            isPassword: isPassword,
            hintText: hintText,
            hintStyle: AppTextStyles.body18w4,
            leading: icon != null
                ? SvgPicture.asset(
                    icon!,
                    height: 27,
                    fit: BoxFit.scaleDown,
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
