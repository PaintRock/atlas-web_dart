class _Password {
  String _password = '';

  Password();

  bool isValid() {
    return _password.length >= 8 &&
           _password.length <= 16 &&
           _password.contains(RegExp(r'[0-9]')) &&
           _password.contains(RegExp(r'[a-z]')) &&
           _password.contains(RegExp(r'[A-Z]'));
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
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
