
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlc_app/config/constants/all_constants.dart';
import 'package:mlc_app/l10n/locale_keys.g.dart';

class SelectItemAuth extends StatelessWidget {
  SelectItemAuth({
    super.key,
    required this.onChange,
  });

  
  final List<int> roleList = [1, 2, 3];

  final _formKey = GlobalKey<FormState>();
  final ValueChanged<int> onChange;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(LocaleKeys.role.tr(), style: AppTextStyles.body18w5),
            SizedBox(height: 10.h),
            DropdownButtonFormField2<int>(
              isExpanded: true,
              decoration: InputDecoration(
                prefixIcon: Padding(
                    padding: EdgeInsets.all(15.h),
                    child: SvgPicture.asset(Assets.icons.selectRole)),
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: AppColors.blue),
                ),
              ),
              hint: const Text(
                'Select your role',
                style: TextStyle(fontSize: 14),
              ),
              items: List.generate(
                roleList.length,
                (index) => DropdownMenuItem<int>(
                  value: roleList[index],
                  child: Text(
                    Constants.roleItem[index].name,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              // roleList
              //     .map(
              //       (item) => DropdownMenuItem<int>(
              //         value: item,
              //         child: Text(
              //           item.toString(),
              //           style: const TextStyle(
              //             fontSize: 14,
              //           ),
              //         ),
              //       ),
              //     )
              //     .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select role.';
                }
                return null;
              },
              onChanged: (value) {
                onChange(value ?? 0);
                //Do something when selected item is changed.
              },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.only(right: 8),
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


