import 'package:flutter/material.dart';

import '../../../../config/constants/all_constants.dart';

class CopyRightText extends StatelessWidget {
  const CopyRightText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '©️ Muslim Logistics Center',
      style: AppTextStyles.body18w5.copyWith(
        color: AppColors.greyTextColor,
      ),
    );
  }
}
