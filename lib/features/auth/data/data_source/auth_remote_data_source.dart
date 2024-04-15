import 'package:dio/dio.dart';
import 'package:mlc_app/config/constants/commans.dart';
import 'package:mlc_app/features/auth/data/model/login_model.dart';
import 'package:mlc_app/features/auth/data/model/login_response_model.dart';
import 'package:mlc_app/features/auth/data/model/registration_model.dart';
import 'package:mlc_app/features/auth/data/model/sms_code_response_model.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponseModel> signUp(RegistrationModel registrationModel);
  Future<LoginResponseModel> login(LoginModel loginModel);
  Future<SmsCodeResponseModel> sendCode(RegistrationModel registrationModel);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;
  AuthRemoteDataSourceImpl({required this.dio});

  @override
  Future<LoginResponseModel> signUp(RegistrationModel registrationModel) async {
    final responce = await dio.request(
      Commans.signUp,
      data: registrationModel.toJson(),
      options: Options(
        method: 'POST',
        headers: {
          'accept': 'application/json',
        },
      ),
    );
    return LoginResponseModel.fromJson(responce.data['data']);
  }

  @override
  Future<SmsCodeResponseModel> sendCode(
      RegistrationModel registrationModel) async {
    final responce = await dio.request(
      Commans.sendCode,
      data: {"phone": registrationModel.phone},
      options: Options(
        method: 'POST',
        headers: {
          'accept': 'application/json',
        },
      ),
    );
    return SmsCodeResponseModel.fromJson(responce.data["data"]);
  }

  @override
  Future<LoginResponseModel> login(LoginModel loginModel) async {
    final responce = await dio.request(
      Commans.login,
      data: loginModel.toJson(),
      options: Options(
        method: 'POST',
        headers: {
          'accept': 'application/json',
        },
      ),
    );
    return LoginResponseModel.fromJson(responce.data['data']);
  }
}
