import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/config/enums/bloc_status.dart';
import 'package:mlc_app/config/notifications/show_message.dart';
import 'package:mlc_app/config/routes/routes.dart';
import 'package:mlc_app/features/driver/home/data/model/post_model.dart';
import 'package:mlc_app/features/driver/home/precentation/bloc/bloc/home_bloc.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/custom_sliver_app_bar.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/filter_button.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/home_menu_item.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/post_card.dart';

import '../../../../../config/constants/all_constants.dart';

class DriverHome extends StatefulWidget {
  const DriverHome({
    super.key,
  });

  @override
  State<DriverHome> createState() => _HomeState();
}

class _HomeState extends State<DriverHome> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(GetAllPostEvent());
    context.read<HomeBloc>().add(GetActivePostEvent());
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSliverAppBar(),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeMenuItem(
                      text: 'Valyutalar kursi',
                      icon: Assets.icons.currency,
                      onTap: () {},
                    ),
                    HomeMenuItem(
                      text: "Mening ma'lumotlarim",
                      icon: Assets.icons.profileLinear,
                      onTap: () {
                        Navigator.pushNamed(context, Routes.myInfoPage);
                      },
                    ),
                    HomeMenuItem(
                      text: 'Buyurtmalarim',
                      icon: Assets.icons.order,
                      onTap: () {
                        Navigator.pushNamed(context, Routes.myOrdersPage);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 55.h,
                child: ListView(
                  padding: EdgeInsets.only(left: 24.w, bottom: 20.h),
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
              )
            ],
          ),
        ),
        BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state.getAllPostStatus == BlocStatus.completed) {
            } else if (state.getAllPostStatus == BlocStatus.connectionFailed) {
              ShowToast.showErrorToast(
                  context, "Connection failure, pLease try again");
            } else if (state.getAllPostStatus == BlocStatus.failed) {
              ShowToast.showErrorToast(
                  context, "ServerFailure ${state.message}");
            }
          },
          builder: (context, state) {
            final List<PostModel> list = state.listPosts ?? [];
            return SliverList.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return PostCard(
                  postModel: list[index],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
