import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlc_app/config/constants/app_colors.dart';
import 'package:mlc_app/config/constants/app_text_styles.dart';
import 'package:mlc_app/config/constants/assets.dart';
import 'package:mlc_app/config/widgets/custom_button.dart';
import 'package:mlc_app/features/auth/precentation/widgets/custom_input_text.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/cusrom_app_bar.dart';
import 'package:mlc_app/features/driver/home_menues/precentation/widgets/pick_image_section.dart';

class EditMyAutoPage extends StatefulWidget {
  const EditMyAutoPage({super.key});

  @override
  State<EditMyAutoPage> createState() => _EditMyAutoPageState();
}

class _EditMyAutoPageState extends State<EditMyAutoPage> {
  final TextEditingController carNumber = TextEditingController();
  final TextEditingController model = TextEditingController();
  final TextEditingController weight = TextEditingController();

  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'MyAvto',
        onBack: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PickImageSection(
            title: 'Transport rasmini qo’shish',
            image: image,
          ),
          CustomInputText(
            title: '1. Transport raqami',
            hintText: 'Transport raqami',
            controller: carNumber,
          ),
          CustomInputText(
            title: '2. Transport modeli',
            hintText: 'Mersedes-Benz',
            controller: model,
          ),
          CustomInputText(
            title: '3. Transport sig’imi (tonna/kub)',
            hintText: 'Transport raqami',
            controller: weight,
          ),
          const Spacer(),
          CustomButton(
            onTap: () {},
            title: 'Saqlash',
            margin: EdgeInsets.all(24.w),
          ),
        ],
      ),
    );
  }
}
