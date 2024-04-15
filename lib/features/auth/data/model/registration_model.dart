class RegistrationModel {
  String? fullname;
  String? phone;
  int? roleId;
  String? password;
  String? password2;
  int? smsCodeId;

  RegistrationModel({
    this.fullname,
    this.phone,
    this.roleId,
    this.password,
    this.password2,
    this.smsCodeId,
  });

  RegistrationModel.fromJson(Map<String, dynamic> json) {
    fullname = json['fullname'];
    phone = json['phone'];
    roleId = json['role_id'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullname'] = this.fullname;
    data['phone'] = this.phone;
    data['role_id'] = this.roleId;
    data['password'] = this.password;
    data['smscode_id'] = this.smsCodeId;

    return data;
  }
}
