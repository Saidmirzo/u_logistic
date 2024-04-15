import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:mlc_app/config/constants/app_colors.dart';
import 'package:mlc_app/config/constants/assets.dart';
import 'package:mlc_app/config/constants/hive_keys.dart';
import 'package:mlc_app/config/routes/routes.dart';
import 'package:mlc_app/features/auth/data/model/login_response_model.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    init();
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      Box<LoginResponseModel> box = await Hive.openBox(HiveKeys.boxName);


      final LoginResponseModel? model = box.get(HiveKeys.authKey);
      if (timer.tick == 3) {
        if (model != null) {
          Navigator.pushReplacementNamed(context, Routes.mainPage);
        } else {
          Navigator.pushReplacementNamed(context, Routes.chooseLanguagePage);
        }
        timer.cancel();
      }
    });
  }

  Future init() async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo = await deviceInfoPlugin.androidInfo;
      log(androidDeviceInfo.device);
    }
    if (Platform.isIOS) {
      IosDeviceInfo iosDeviceInfo = await deviceInfoPlugin.iosInfo;
      log(iosDeviceInfo.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Image.asset(Assets.images.appLogo, height: 106.h),
      ),
    );
  }
}
