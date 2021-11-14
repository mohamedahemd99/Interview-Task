class UserRegisterModel {
  String mobile;
  String name;
  String updatedAt;
  String createdAt;
  int id;
  String accessToken;
  String accessProvider;

  UserRegisterModel(
      {this.mobile,
        this.name,
        this.updatedAt,
        this.createdAt,
        this.id,
        this.accessToken,
        this.accessProvider});

  UserRegisterModel.fromJson(Map<String, dynamic> json) {
    mobile = json['mobile'];
    name = json['name'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
    accessToken = json['access_token'];
    accessProvider = json['access_provider'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile'] = this.mobile;
    data['name'] = this.name;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['access_token'] = this.accessToken;
    data['access_provider'] = this.accessProvider;
    return data;
  }
}