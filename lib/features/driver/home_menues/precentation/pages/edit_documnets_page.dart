import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/config/enums/my_doc_status.dart';
import 'package:mlc_app/config/widgets/custom_button.dart';
import 'package:mlc_app/features/auth/precentation/widgets/custom_input_text.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/cusrom_app_bar.dart';
import 'package:mlc_app/features/driver/home_menues/precentation/widgets/pick_image_section.dart';

class EditDocumentsPage extends StatelessWidget {
  EditDocumentsPage({super.key, required this.myDocStatus});
  final MyDocStatus myDocStatus;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: getPageName(),
        onBack: () => Navigator.pop(context),
      ),
      body: Column(
        children: [
          PickImageSection(
            title: getPageName(),
          ),
          CustomInputText(
            title: 'ID raqami',
            hintText: 'Id raqam',
            controller: controller,
          ),
          const Spacer(),
          CustomButton(
            onTap: () {},
            title: 'Saqlash',
            margin: EdgeInsets.all(24.w),
          )
        ],
      ),
    );
  }

  String getPageName() {
    switch (myDocStatus) {
      case MyDocStatus.passport:
        return "Passportim";
      case MyDocStatus.textPass:
        return "Tex Passportim";
      case MyDocStatus.license:
        return "Haydovchilik Guvohnomam";
      case MyDocStatus.insurance:
        return "Sug'urta";

      default:
        return "";
    }
  }
}
