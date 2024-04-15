import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlc_app/config/enums/bloc_status.dart';
import 'package:mlc_app/config/notifications/show_message.dart';
import 'package:mlc_app/features/driver/home/data/model/post_model.dart';
import 'package:mlc_app/features/driver/home/precentation/bloc/bloc/home_bloc.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/circle_outline_button.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/current_product_card.dart';

import '../../../../../config/constants/all_constants.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.getActiveStatus == BlocStatus.failed) {
          ShowToast.showErrorToast(context, state.message ?? '');
        }
      },
      builder: (context, state) {
        PreferredSizeWidget? bottom;
        if (state.getActiveStatus == BlocStatus.completed) {
          final PostModel postModel = state.activePost??PostModel();
          bottom =  CurrentProductCard(postModel: postModel,);
        } else if (state.getActiveStatus == BlocStatus.inProgress) {
          bottom = PreferredSize(
            preferredSize: Size.fromHeight(118.h),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        final bool isOpen = state.getActiveStatus == BlocStatus.notFound ||
            state.getActiveStatus == BlocStatus.failed;

        return SliverAppBar(
          pinned: true,
          snap: true,
          floating: true,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  Assets.images.appLogo,
                  height: 40.h,
                  fit: BoxFit.fitWidth,
                ),
                CircleOutlineButton(
                  onTap: () {},
                  child: SvgPicture.asset(Assets.icons.notification),
                )
              ],
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              image: DecorationImage(
                image: AssetImage(
                  Assets.images.appBarBg,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          backgroundColor: AppColors.primaryColor,
          expandedHeight: isOpen ? 80.h : 200.h,
          bottom: bottom,
        );
      },
    );
  }
}
