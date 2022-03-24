

class LoginScreenResponse {
  bool? status;
  String? message;
  Data? data;
  int? code;

  LoginScreenResponse({this.status, this.message, this.data, this.code});

  LoginScreenResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    data['code'] = this.code;
    return data;
  }
}

class Data {
  String? tokenKey;
  int? userId;
  String? username;
  bool? isSuperuser;
  String? userType;
  int? usersCount;
  int? productsCount;
  int? transactionsCount;
  int? ordersCount;

  Data(
      {this.tokenKey,
        this.userId,
        this.username,
        this.isSuperuser,
        this.userType,
        this.usersCount,
        this.productsCount,
        this.transactionsCount,
        this.ordersCount});

  Data.fromJson(Map<String, dynamic> json) {
    tokenKey = json['token_key'];
    userId = json['user_id'];
    username = json['username'];
    isSuperuser = json['is_superuser'];
    userType = json['user_type'];
    usersCount = json['users_count'];
    productsCount = json['products_count'];
    transactionsCount = json['transactions_count'];
    ordersCount = json['orders_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token_key'] = this.tokenKey;
    data['user_id'] = this.userId;
    data['username'] = this.username;
    data['is_superuser'] = this.isSuperuser;
    data['user_type'] = this.userType;
    data['users_count'] = this.usersCount;
    data['products_count'] = this.productsCount;
    data['transactions_count'] = this.transactionsCount;
    data['orders_count'] = this.ordersCount;
    return data;
  }
}