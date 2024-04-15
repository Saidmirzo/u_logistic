abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  // String get logo => "$basePath/logo.svg";
  String get arrowBack => "$basePath/arrow_back.svg";

  String get uz => "$basePath/ic_uz.svg";

  String get en => "$basePath/ic_us.svg";

  String get ru => "$basePath/ic_ru.svg";

  String get tick => "$basePath/tick.svg";

  String get profileLinear => "$basePath/profile_linear.svg";

  String get lock => "$basePath/lock.svg";

  String get call => "$basePath/call.svg";

  String get selectRole => "$basePath/select_role.svg";

  String get arrowDown => "$basePath/arrow_down.svg";

  String get iconUp => "$basePath/icon_up.svg";

  String get iconDown => "$basePath/icon_down.svg";

  String get congratulations => "$basePath/congratulations.svg";

  String get notification => "$basePath/notification.svg";

  String get flagUzb => "$basePath/flag_uzb.png";

  String get clock => "$basePath/clock.svg";

  String get currency => "$basePath/currency.svg";

  String get cost => "$basePath/cost.svg";

  String get order => "$basePath/order.svg";

  String get weight => "$basePath/weight.svg";

  String get home => "$basePath/home.svg";

  String get homeBold => "$basePath/home_bold.svg";

  String get message => "$basePath/message.svg";

  String get messageBold => "$basePath/message_bold.svg";

  String get profile => "$basePath/profile.svg";

  String get profileBold => "$basePath/profile_bold.svg";

  String get location => "$basePath/location.svg";

  String get currLocation => "$basePath/curr_location.svg";

  String get id => "$basePath/id_ic.svg";

  String get comment => "$basePath/comment_ic.svg";

  String get save => "$basePath/save.svg";

  String get search => "$basePath/search.svg";

  String get passport => "$basePath/passport.svg";

  String get textPass => "$basePath/tex_pass.svg";

  String get license => "$basePath/license.svg";

  String get insurance => "$basePath/insurance.svg";

  String get setImage => "$basePath/set_image.svg";

  String get moonColored => "$basePath/moon_colored.svg";

  String get keyColored => "$basePath/key_colored.svg";

  String get messageColored => "$basePath/message_colored.svg";

  String get norificationColored => "$basePath/notification_colored.svg";

  String get passwordColored => "$basePath/notification_colored.svg";

  String get doubleArrow => "$basePath/double_arrow_right.svg";

  String get phone => "$basePath/phone.svg";

  String get sms => "$basePath/sms.svg";

  String get operator => "$basePath/operator.svg";

  String get endOrder => "$basePath/end_order.svg";

  String get outlineLocation => "$basePath/location_outline.svg";

  String get noData => "$basePath/no_data.svg";

  String get authMessage => "$basePath/auth_message.svg";

  String get postIcon => "$basePath/post_icon.svg";

  String get postName => "$basePath/post_name.svg";

  String get postWeight => "$basePath/post_weight.svg";
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get appLogo => '$basePath/logo.png';

  String get darkAppLogo => '$basePath/dark_logo.png';

  String get exampleBanner => '$basePath/example_banner.svg';

  String get appBarBg => '$basePath/app_bar_bg.png';

  String get product1 => '$basePath/product1.png';

  String get person1 => '$basePath/person1.png';

  String get defImage => '$basePath/def_person.png';
}
