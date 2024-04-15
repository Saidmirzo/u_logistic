import 'package:flutter/material.dart';
import 'package:mlc_app/config/constants/app_colors.dart';
import 'package:mlc_app/config/constants/app_decorations.dart';

class CircleOutlineButton extends StatelessWidget {
  const CircleOutlineButton({
    super.key,
    required this.onTap,
    required this.child,
    this.borderColor,
    this.padding,
    this.margin,
    this.size = 50,
  });
  final Function() onTap;
  final Widget child;
  final Color? borderColor;
  final double? padding;
  final EdgeInsets? margin;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? const EdgeInsets.all(0),
      child: IconButton(
        onPressed: onTap,
        style: AppDecorations.buttonStyle(
          size: Size(size, size),
          padding: EdgeInsets.all(padding ?? 8),
          borderRadius: 50,
          bgColor: Colors.transparent,
          border: BorderSide(
            color: borderColor ?? AppColors.white.withOpacity(.2),
          ),
        ),
        icon: child,
      ),
    );
  }
}
