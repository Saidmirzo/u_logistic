import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlc_app/config/constants/all_constants.dart';
import 'package:mlc_app/config/widgets/custom_textfield.dart';
import 'package:mlc_app/features/driver/home/data/model/post_model.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/cusrom_app_bar.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/post_card.dart';
import 'package:mlc_app/features/driver/home_menues/precentation/widgets/my_order_tab_bar.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({super.key});

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage>
    with SingleTickerProviderStateMixin {
  final TextEditingController search = TextEditingController();

  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Buyurtmalarim',
        onBack: () => Navigator.pop(context),
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            snap: true,
            floating: true,
            expandedHeight: 100.h,
            flexibleSpace: CustomTextField(
              margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 22.h),
              leading: SvgPicture.asset(Assets.icons.search),
              hintText: "Buyurtmalarni qidirish",
              hintStyle:
                  AppTextStyles.body18w5.copyWith(color: AppColors.textColor),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(50.h),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withOpacity(.6),
                    offset: const Offset(0, .5),
                    blurRadius: 2,
                  )
                ],
              ),
              controller: search,
            ),
          ),
          const SliverToBoxAdapter(
            child: MyOrderTabBar(),
          ),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return PostCard(
                postModel: PostModel(),
              );
            },
          ),
        ],
      ),
    );
  }
}
