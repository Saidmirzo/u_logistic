import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/config/constants/app_text_styles.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({
    super.key,
    required this.onEnd,
  });
  final ValueChanged<bool> onEnd;

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  Duration time = const Duration(seconds: 180);
  @override
  void initState() {
    super.initState();
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          time = time - const Duration(seconds: 1);
        });
        if (time.inSeconds == 0) {
          widget.onEnd(true);
          timer.cancel();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 35.h),
      child: Center(
        child: SizedBox(
          child: Text(
              '${fillZero(time.inMinutes)}:${fillZero(time.inSeconds % 60)}',
              style: AppTextStyles.body18w5),
        ),
      ),
    );
  }

  String fillZero(int time) {
    final String value = time.toString();
    final int count = value.length;
    if (count == 1) {
      return "0$value";
    } else {
      return value;
    }
  }
}
