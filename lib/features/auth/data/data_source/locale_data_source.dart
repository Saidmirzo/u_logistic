import 'package:hive/hive.dart';
import 'package:mlc_app/config/constants/hive_keys.dart';
import 'package:mlc_app/features/auth/data/model/login_response_model.dart';

abstract class AuthLocaleDataSource {
  Future saveUserLocale(LoginResponseModel loginResponseModel);
  Future<LoginResponseModel?> getUserInfo();
}

class AuthLocaleDataSourceImpl implements AuthLocaleDataSource {
  final boxName = HiveKeys.boxName;

  @override
  Future saveUserLocale(LoginResponseModel loginResponseModel) async {
    Box<LoginResponseModel> box;
    final boxName = HiveKeys.boxName;
    if (Hive.isBoxOpen(boxName)) {
      box = Hive.box(boxName);
    } else {
      box = await Hive.openBox(boxName);
    }
    box = Hive.box(boxName);
    await box.put(HiveKeys.authKey, loginResponseModel);
  }

  @override
  Future<LoginResponseModel?> getUserInfo() async {
    Box<LoginResponseModel> box;

    if (Hive.isBoxOpen(boxName)) {
      box = Hive.box(boxName);
    } else {
      box = await Hive.openBox(boxName);
    }
    return box.get(HiveKeys.authKey);
  }
}
