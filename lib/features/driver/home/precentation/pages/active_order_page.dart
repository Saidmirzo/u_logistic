import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/features/driver/home/data/model/message_model.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/active_order_card.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/bottom_send_message_part.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/cusrom_app_bar.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/post_detail_widgets/message_item.dart';

import '../../../../../config/constants/all_constants.dart';

// ignore: must_be_immutable
class ActiveOrderPage extends StatefulWidget {
  const ActiveOrderPage({super.key});

  @override
  State<ActiveOrderPage> createState() => _ActiveOrderPageState();
}

class _ActiveOrderPageState extends State<ActiveOrderPage> {
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
        title: "Aktiv buyurtma",
        onBack: () => Navigator.pop(context),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const ActiveOrderCard(),
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
              message: message)
        ],
      ),
    );
  }
}
