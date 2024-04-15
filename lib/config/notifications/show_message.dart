import 'package:flutter/material.dart';
import 'package:mlc_app/config/constants/all_constants.dart';

class ShowToast {
  static showErrorToast(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.transparent,
        elevation: 0,
        content: Container(
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height - 150,
          ),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            message,
            style: AppTextStyles.body16w4.copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
