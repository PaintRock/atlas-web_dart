class User {
  String name = '';
  int age = 0;
  double height = 0.0;
  String id = '';

  User({required this.name, required this.age, required this.height, required this.id});

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
      height: userJson['height'],
    );
  }
}
void main() {
  final user = User(name: "Youssef", age: 25, height: 1.89);
  print(user.toJson());
}

@override
  String toString() {
    return 'User{name: $name, age: $age, height: $height, id: $id}';
  }
  