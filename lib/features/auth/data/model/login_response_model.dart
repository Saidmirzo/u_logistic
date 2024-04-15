import 'package:hive/hive.dart';
part 'login_response_model.g.dart';

@HiveType(typeId: 0)
class LoginResponseModel extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? token;
  @HiveField(2)
  String? fullname;
  @HiveField(3)
  String? roleId;
  @HiveField(4)
  String? phone;

  LoginResponseModel(
      {this.id, this.token, this.fullname, this.roleId, this.phone});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    token = json['token'];
    fullname = json['fullname'];
    roleId = json['role_id'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['token'] = this.token;
    data['fullname'] = this.fullname;
    data['role_id'] = this.roleId;
    data['phone'] = this.phone;
    return data;
  }
}
