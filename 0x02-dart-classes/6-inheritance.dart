// 6-inheritance.dart

import '6-password.dart';

class User extends Password {
  int id;
  String? name;
  int? age;
  double? height;
  String? user_password;

  User({
    required this.id,
    this.name,
    this.age,
    this.height,
    this.user_password,
  }) : super(password: user_password);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      heigh
      t: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }

  @override
  set password(String? newPassword) {
    super.password = newPassword;
    user_password = newPassword;
  }

  @override
  String? get password => user_password;
}