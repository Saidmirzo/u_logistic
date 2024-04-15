import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/config/constants/all_constants.dart';
import 'package:mlc_app/config/routes/routes.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/circle_outline_button.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/cost_and_weight_row.dart';
import 'package:mlc_app/features/driver/home/precentation/widgets/cusrom_app_bar.dart';
import 'package:mlc_app/features/driver/home_menues/precentation/widgets/custom_dot.dart';
import 'package:mlc_app/features/driver/home_menues/precentation/widgets/my_info__item.dart';

class MyInfoPage extends StatelessWidget {
  const MyInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Mening malumotim',
        onBack: () => Navigator.pop(context),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 32.h, bottom: 20.h),
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
              decoration: BoxDecoration(
                color: AppColors.messageItemColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Row(
                children: [
                  Container(
                    height: 120.h,
                    width: 114.w,
                    margin: EdgeInsets.only(right: 15.w),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mersede-Benz', style: AppTextStyles.body22w5),
                      Container(
                        height: 32.h,
                        width: 160.w,
                        margin: EdgeInsets.only(top: 8.h, bottom: 8.h),
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(color: AppColors.black),
                        ),
                        child: Row(
                          children: [
                            const CustomDot(),
                            Text('40', style: AppTextStyles.body20w5),
                            Container(
                              width: 1.w,
                              margin: EdgeInsets.symmetric(horizontal: 8.w),
                              height: double.maxFinite,
                              color: AppColors.black,
                            ),
                            Text('A 123 SD', style: AppTextStyles.body20w5),
                            const Spacer(),
                            const CustomDot(),
                          ],
                        ),
                      ),
                      const CostAndWeightRow(
                        weight: 24,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                  const Spacer(),
                  CircleOutlineButton(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.editMyAutoPage);
                    },
                    padding: 0,
                    size: 32.h,
                    borderColor: AppColors.textColor,
                    child: const Icon(
                      Icons.edit,
                      color: AppColors.textColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 265.w,
              child: Text(
                " Malumotlaringizni kritib o’ting.",
                style: AppTextStyles.body24w5,
                textAlign: TextAlign.center,
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 20.h),
              mainAxisSpacing: 14.h,
              crossAxisSpacing: 14.h,
              crossAxisCount: 2,
              childAspectRatio: 3,
              children: List.generate(
                4,
                (index) => MyInfoItem(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.editDocumentsPage,
                      arguments: {
                        "myDocStatus": Constants.listMenu[index].myDocStatus,
                      },
                    );
                  },
                  myInfoMenuModel: Constants.listMenu[index],
                  isActive: index == 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
