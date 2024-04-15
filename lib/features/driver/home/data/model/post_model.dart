class PostModel {
  int? id;
  String? name;
  String? weight;
  String? pickUpAddress;
  String? shippingAddress;
  String? date;
  int? time;
  String? description;
  String? userId;
  String? roleId;
  String? status;
  String? getLatitude;
  String? getLongitude;
  String? toGoLatitude;
  String? toGoLongitude;
  int? driverId;

  PostModel(
      {this.id,
      this.name,
      this.weight,
      this.pickUpAddress,
      this.shippingAddress,
      this.date,
      this.time,
      this.description,
      this.userId,
      this.roleId,
      this.status,
      this.getLatitude,
      this.getLongitude,
      this.toGoLatitude,
      this.toGoLongitude,
      this.driverId});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    weight = json['weight'];
    pickUpAddress = json['pick_up_address'];
    shippingAddress = json['shipping_address'];
    date = json['date'];
    time = json['time'];
    description = json['description'];
    userId = json['user_id'];
    roleId = json['role_id'];
    status = json['status'];
    getLatitude = json['get_latitude'];
    getLongitude = json['get_longitude'];
    toGoLatitude = json['to_go_latitude'];
    toGoLongitude = json['to_go_longitude'];
    driverId = json['driver_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['weight'] = this.weight;
    data['pick_up_address'] = this.pickUpAddress;
    data['shipping_address'] = this.shippingAddress;
    data['date'] = this.date;
    data['time'] = this.time;
    data['description'] = this.description;
    data['user_id'] = this.userId;
    data['role_id'] = this.roleId;
    data['status'] = this.status;
    data['get_latitude'] = this.getLatitude;
    data['get_longitude'] = this.getLongitude;
    data['to_go_latitude'] = this.toGoLatitude;
    data['to_go_longitude'] = this.toGoLongitude;
    data['driver_id'] = this.driverId;
    return data;
  }
}
