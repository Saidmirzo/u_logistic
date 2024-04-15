import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/config/constants/all_constants.dart';
import 'package:mlc_app/config/widgets/custom_button.dart';
import 'package:mlc_app/features/auth/precentation/widgets/custom_input_text.dart';
import 'package:mlc_app/features/auth/precentation/widgets/verfy_code_bottom_sheet.dart';
import 'package:pinput/pinput.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});
  final TextEditingController code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                style: AppDecorations.buttonStyle(
                  padding: const EdgeInsets.all(10),
                  border: const BorderSide(color: AppColors.borderColor),
                  borderRadius: 100,
                ),
                icon: const Icon(Icons.arrow_back_rounded),
              ),
              Padding(
                padding: EdgeInsets.only(top: 23.h, bottom: 14.h),
                child: Text(
                  'Parolni tiklash',
                  style: AppTextStyles.body22w6,
                ),
              ),
              Text(
                "Parolni unutdingizmi? Hechqisi yo’q. Yangi parolni o’rnatishingiz uchun biz sizning telefoningizga tasdiq kodini yuboramiz.",
                style: AppTextStyles.body17w4,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, bottom: 10.h),
                child: Text(
                  'Kodni qayerga yuborishimiz kerak?',
                  style: AppTextStyles.body17w4,
                ),
              ),
              CustomInputText(
                title: 'Telefon raqam',
                hintText: 'Tel..',
                margin: EdgeInsets.only(top: 10.h, bottom: 30.h),
                controller: TextEditingController(),
              ),
              CustomButton(
                title: 'Keyingi bosqich',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
