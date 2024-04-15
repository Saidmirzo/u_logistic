import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/all_constants.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.hintText,
    this.leading,
    this.radius,
    this.onSubmitted,
    this.textInputType,
    this.inputFormatters,
    this.onChanged,
    this.isPassword = false,
    this.width,
    this.hintStyle,
    this.boxShadow,
    this.bgColor,
    this.height,
    this.borderColor,
    this.margin,
    this.decoration,
    this.validator,
    this.autoFocus,
    this.focusNode,
  });
  final TextEditingController controller;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? leading;
  final double? radius;
  final void Function(String)? onSubmitted;
  final void Function(String)? onChanged;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final bool? isPassword;
  final double? width;
  final BoxShadow? boxShadow;
  final Color? bgColor;
  final double? height;
  final Color? borderColor;
  final EdgeInsets? margin;
  final BoxDecoration? decoration;
  final String? Function(String? value)? validator;
  final bool? autoFocus;
  final FocusNode? focusNode;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      decoration: widget.decoration,
      child: TextFormField(
        key: widget.key,
        focusNode: widget.focusNode,
        autofocus: widget.autoFocus ?? false,
        obscureText: widget.isPassword == true ? isHide : false,
        obscuringCharacter: '*',
        style: AppTextStyles.body18w4,
        controller: widget.controller,
        validator: widget.validator ??
            (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
        // onSubmitted: widget.onSubmitted,
        onChanged: widget.onChanged,
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.textInputType,
        cursorColor: AppColors.black,
        cursorHeight: 25,
        decoration: InputDecoration(
          // labelText: 'Enter the Value',
          // errorText: false ? "Value Can't Be Empty" : null,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          prefixIcon: widget.leading,
          // prefixIconConstraints: BoxConstraints.tightForFinite(),
          hintText: widget.hintText,
          hintStyle: widget.hintStyle ??
              AppTextStyles.body14w5.copyWith(
                color: AppColors.grey,
              ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: widget.borderColor ?? AppColors.fieldBorderColor),
            borderRadius: BorderRadius.circular(13.r),
          ),
          suffixIcon: widget.isPassword == true
              ? IconButton(
                  icon: Icon(
                    isHide ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.black.withOpacity(.25),
                  ),
                  onPressed: () {
                    setState(() {
                      isHide = !isHide;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
