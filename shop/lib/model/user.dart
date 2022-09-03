class User {
  String message;
  int? userId;
  int? shopId;

  User({required this.message, this.userId, this.shopId});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      message: json["message"] as String,
      userId: json["userId"] as int,
      shopId: json["shopId"] as int,
    );
  }
}
