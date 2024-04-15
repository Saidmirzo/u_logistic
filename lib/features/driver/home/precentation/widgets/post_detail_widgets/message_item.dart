import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mlc_app/features/driver/home/data/model/message_model.dart';

import '../../../../../../config/constants/all_constants.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({
    super.key,
    required this.messageModel,
  });
  final MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    if (messageModel.senderName == 'i') {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 18.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10.r)).copyWith(
                  topRight: const Radius.circular(0),
                ),
              ),
              child: Text(
                messageModel.message,
                style: AppTextStyles.body16w4.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                DateFormat('h:mm a').format(
                  DateTime.fromMillisecondsSinceEpoch(messageModel.date),
                ),
                style: AppTextStyles.body14w4.copyWith(
                  color: AppColors.greyTextColor,
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 18.h),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Image.asset(messageModel.image),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(messageModel.senderName, style: AppTextStyles.body16w6),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.messageItemColor,
                      borderRadius:
                          BorderRadius.all(Radius.circular(10.r)).copyWith(
                        topLeft: const Radius.circular(0),
                      ),
                    ),
                    child: Text(
                      messageModel.message,
                      style: AppTextStyles.body16w4,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                       DateFormat('h:mm a').format(
                  DateTime.fromMillisecondsSinceEpoch(messageModel.date),
                ),
                      style: AppTextStyles.body14w4.copyWith(
                        color: AppColors.greyTextColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
