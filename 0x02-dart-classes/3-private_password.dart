class _Password {
  String password = '';

  _Password({required this.password});

  bool isValid() {
    return password.length >= 8 &&
           password.length <= 16 &&
           password.contains(RegExp(r'[0-9]')) &&
           password.contains(RegExp(r'[a-z]')) &&
           password.contains(RegExp(r'[A-Z]'));
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}

void main() {
  final ps = Password(password: "Passwordcode");
  print(ps.toString());
  print(ps.isValid());
  final ps2 = Password(password: "PasswordDecode3");
  print(ps2.toString());
  print(ps2.isValid());
}
