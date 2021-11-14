class UserLoginModel {
  int id;
  String name;
  Null email;
  Null gender;
  Null birthDate;
  int newsLetter;
  int offers;
  String mobile;
  Null emailVerifiedAt;
  Null mobileVerifiedAt;
  String img;
  int notification;
  Null rememberToken;
  String createdAt;
  String updatedAt;
  int socialAccountsCount;
  String accessToken;
  String accessProvider;

  UserLoginModel(
      {this.id,
        this.name,
        this.email,
        this.gender,
        this.birthDate,
        this.newsLetter,
        this.offers,
        this.mobile,
        this.emailVerifiedAt,
        this.mobileVerifiedAt,
        this.img,
        this.notification,
        this.rememberToken,
        this.createdAt,
        this.updatedAt,
        this.socialAccountsCount,
        this.accessToken,
        this.accessProvider});

  UserLoginModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    gender = json['gender'];
    birthDate = json['birth_date'];
    newsLetter = json['news_letter'];
    offers = json['offers'];
    mobile = json['mobile'];
    emailVerifiedAt = json['email_verified_at'];
    mobileVerifiedAt = json['mobile_verified_at'];
    img = json['img'];
    notification = json['notification'];
    rememberToken = json['remember_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    socialAccountsCount = json['social_accounts_count'];
    accessToken = json['access_token'];
    accessProvider = json['access_provider'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['birth_date'] = this.birthDate;
    data['news_letter'] = this.newsLetter;
    data['offers'] = this.offers;
    data['mobile'] = this.mobile;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['mobile_verified_at'] = this.mobileVerifiedAt;
    data['img'] = this.img;
    data['notification'] = this.notification;
    data['remember_token'] = this.rememberToken;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['social_accounts_count'] = this.socialAccountsCount;
    data['access_token'] = this.accessToken;
    data['access_provider'] = this.accessProvider;
    return data;
  }
}