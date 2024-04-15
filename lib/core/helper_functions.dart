import 'package:easy_localization/easy_localization.dart';

class HelperFunctions {
  static String formatTime(String format, int? time) {
    return DateFormat(format).format(
      time != null ? DateTime.fromMillisecondsSinceEpoch(time) : DateTime.now(),
    );
  }
}
