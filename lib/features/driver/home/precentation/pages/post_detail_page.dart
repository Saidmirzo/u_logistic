import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/features/driver/home/data/model/message_model.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/bottom_send_message_part.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/cusrom_app_bar.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/post_detail_widgets/detail_post_card.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/post_detail_widgets/message_item.dart';

import '../../../../../config/constants/all_constants.dart';

class PostDeatilPage extends StatefulWidget {
  const PostDeatilPage({super.key});

  @override
  State<PostDeatilPage> createState() => _PostDeatilPageState();
}

class _PostDeatilPageState extends State<PostDeatilPage> {
  final TextEditingController message = TextEditingController();

  List<MessageModel> listMessages = [
    MessageModel(
        senderName: 'Assistent',
        message: "Assalomu alaykum",
        image: Assets.images.person1,
        date: 1701262340624),
    MessageModel(
        senderName: 'i',
        message: "Va alaykum alaykum",
        image: Assets.images.person1,
        date: 1701262340624),
    MessageModel(
        senderName: 'i',
        message: "Aka yaxshimisiz?",
        image: Assets.images.person1,
        date: 1701262340624),
    MessageModel(
        senderName: 'i',
        message: "Aka yaxshimisiz?",
        image: Assets.images.person1,
        date: 1701262340624),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onBack: () => Navigator.pop(context),
        title: 'Elon tavsiloti',
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const DteailPostCard(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 5.h),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.cardBorderColor,
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(
                  'Komentariya boshi',
                  style: AppTextStyles.body13w4,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  reverse: true,
                  itemCount: listMessages.length,
                  padding: EdgeInsets.symmetric(horizontal: 18.w)
                      .copyWith(bottom: 100.h),
                  itemBuilder: (context, index) {
                    return MessageItem(messageModel: listMessages[index]);
                  },
                ),
              )
            ],
          ),
          BottomSendMessagePart(
              onTap: () {
                if (message.text.isNotEmpty) {
                  setState(() {
                    listMessages.add(
                      MessageModel(
                        senderName: "i",
                        message: message.text,
                        image: Assets.images.person1,
                        date: DateTime.now().millisecondsSinceEpoch,
                      ),
                    );
                  });
                  message.clear();
                }
              },
              message: message),
        ],
      ),
    );
  }
}
