import 'package:flutter/material.dart';
import 'package:mlc_app/config/constants/all_constants.dart';
import 'package:mlc_app/features/auth/precentation/widgets/custom_input_text.dart';
import 'package:mlc_app/features/operator/home/precentation/widgets/operator_main_appbar.dart';

class CreatePostPage extends StatelessWidget {
  CreatePostPage({super.key});

  final TextEditingController postName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OperatorMainAppBar(
          funcNotific: () {},
          title: 'E’lon berish',
          onBack: () {},
        ),
        CustomInputText(
          title: 'E’lon nomi',
          hintText: "E’lon nomini kiriting",
          controller: postName,
          icon: Assets.icons.postName,
        ),
        CustomInputText(
          title: "Og'irligi",
          hintText: "Og'irligini kiriting",
          controller: postName,
          icon: Assets.icons.postWeight,
          borderColor: AppColors.cardBg,
        ),
      ],
    );
  }
}
