import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/features/driver/home_menues/precentation/widgets/my_order_tab_item.dart';

class MyOrderTabBar extends StatelessWidget {
  const MyOrderTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          MyOrderTabItem(
            ontap: () {},
            title: 'Xammasi',
            count: 2,
            isActive: true,
            index: 0,
          ),
          MyOrderTabItem(
            ontap: () {},
            title: 'Xammasi',
            count: 1,
            isActive: false,
            index: 1,
          ),
          MyOrderTabItem(
            ontap: () {},
            title: 'Xammasi',
            count: 1,
            isActive: false,
            index: 2,
          )
        ],
      ),
    );
  }
}
