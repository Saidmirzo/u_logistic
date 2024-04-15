import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/features/driver/home/data/model/post_model.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/filter_button.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/post_card.dart';
import 'package:mlc_app/features/operator/home/precentation/widgets/operator_main_appbar.dart';

class OperatorHomePage extends StatelessWidget {
  const OperatorHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OperatorMainAppBar(
          funcNotific: () {},
        ),
        SizedBox(
          height: 65.h,
          child: ListView(
            padding: EdgeInsets.only(left: 24.w, bottom: 5.h, top: 25.h),
            scrollDirection: Axis.horizontal,
            children: [
              FilterButton(
                text: 'Hammasi',
                isActiev: true,
                onTap: () {},
              ),
              FilterButton(
                text: 'Eng qimmat',
                isActiev: false,
                onTap: () {},
              ),
              FilterButton(
                text: 'Eng yaqin',
                isActiev: false,
                onTap: () {},
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(top: 15.h, bottom: 100.h),
            itemCount: 5,
            itemBuilder: (context, index) {
              return PostCard(postModel: PostModel());
            },
          ),
        )
      ],
    );
  }
}
