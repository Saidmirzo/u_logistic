class SmsCodeResponseModel {
  int? id;
  int? code;
  String? phone;
  String? status;

  SmsCodeResponseModel({this.id, this.code, this.phone, this.status});

  SmsCodeResponseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    phone = json['phone'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['phone'] = this.phone;
    data['status'] = this.status;
    return data;
  }
}
