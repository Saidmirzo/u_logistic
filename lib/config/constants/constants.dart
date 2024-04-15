import 'package:easy_localization/easy_localization.dart';
import 'package:mlc_app/config/constants/all_constants.dart';
import 'package:mlc_app/config/enums/my_doc_status.dart';
import 'package:mlc_app/l10n/locale_keys.g.dart';

class Constants {
  static String baseUrl = "https://savdo.brim.uz/";
  static String privacyText =
      '''Lorem ipsum dolor sit amet consectetur. Aliquam in nulla eleifend ut porttitor gravida. Risus eget faucibus ullamcorper aliquam nec consectetur. Neque adipiscing suspendisse leo tincidunt consectetur. Sit volutpat rhoncus a volutpat. Aliquam sem ac eget tempus massa urna risus vulputate. Orci elit adipiscing nunc pretium vitae congue eu gravida. Scelerisque pulvinar pellentesque egestas aliquam quis. Nisl nisl aliquet in sem odio donec eleifend facilisis. Quisque ridiculus iaculis integer sit ultricies parturient viverra sit.
Lorem ipsum dolor sit amet consectetur. Aliquam in nulla eleifend ut porttitor gravida. Risus eget faucibus ullamcorper aliquam nec consectetur. Neque adipiscing suspendisse leo tincidunt consectetur. Sit volutpat rhoncus a volutpat. Aliquam sem ac eget tempus massa urna risus vulputate. Orci elit adipiscing nunc pretium vitae congue eu gravida. Scelerisque pulvinar pellentesque egestas aliquam quis. Nisl nisl aliquet in sem odio donec eleifend facilisis. Quisque ridiculus iaculis integer sit ultricies parturient viverra sit.
Lorem ipsum dolor sit amet consectetur. Lorem ipsum dolor sit amet consectetur. Aliquam in nulla eleifend ut porttitor gravida. Risus eget faucibus ullamcorper aliquam nec consectetur. Neque adipiscing suspendisse leo tincidunt consectetur. Sit volutpat rhoncus a volutpat. Aliquam sem ac eget tempus massa urna risus vulputate. Orci elit adipiscing nunc pretium vitae congue eu gravida. Scelerisque pulvinar pellentesque egestas aliquam quis. Nisl nisl aliquet in sem odio donec eleifend facilisis. Quisque ridiculus iaculis integer sit ultricies parturient viverra sit.
Lorem ipsum dolor sit amet consectetur. Aliquam in nulla eleifend ut porttitor gravida. Risus eget faucibus ullamcorper aliquam nec consectetur. Neque adipiscing suspendisse leo tincidunt consectetur. Sit volutpat rhoncus a volutpat. Aliquam sem ac eget tempus massa urna risus vulputate. Orci elit adipiscing nunc pretium vitae congue eu gravida. Scelerisque pulvinar pellentesque egestas aliquam quis. Nisl nisl aliquet in sem odio donec eleifend facilisis. Quisque ridiculus iaculis integer sit ultricies parturient viverra sit.
Lorem ipsum dolor sit amet consectetur. Aliquam ''';

  static List<LanguageModel> listLanguages = [
    LanguageModel(icon: Assets.icons.uz, title: "Uzbek"),
    LanguageModel(icon: Assets.icons.en, title: "English"),
    LanguageModel(icon: Assets.icons.ru, title: "Russkiy"),
  ];
  static List<MyInfoMenuModel> listMenu = [
    MyInfoMenuModel(
        title: 'Pasport',
        icon: Assets.icons.passport,
        myDocStatus: MyDocStatus.passport),
    MyInfoMenuModel(
        title: 'Tex pasport',
        icon: Assets.icons.textPass,
        myDocStatus: MyDocStatus.textPass),
    MyInfoMenuModel(
        title: 'license',
        icon: Assets.icons.license,
        myDocStatus: MyDocStatus.license),
    MyInfoMenuModel(
        title: "Sug’urta",
        icon: Assets.icons.insurance,
        myDocStatus: MyDocStatus.insurance),
  ];

  static final List<RoleModel> roleItem = [
    RoleModel(id: 1, name: LocaleKeys.operator.tr()),
    RoleModel(id: 2, name: LocaleKeys.driver.tr()),
    RoleModel(id: 3, name: LocaleKeys.customer.tr()),
  ];
}

class RoleModel {
  final String name;
  final int id;
  RoleModel({
    required this.id,
    required this.name,
  });
}

class MyInfoMenuModel {
  final String title;
  final String icon;
  final MyDocStatus myDocStatus;
  MyInfoMenuModel({
    required this.icon,
    required this.title,
    required this.myDocStatus,
  });
}

class LanguageModel {
  LanguageModel({required this.icon, required this.title});
  final String title;
  final String icon;
}
