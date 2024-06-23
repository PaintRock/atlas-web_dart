class Password {
  String _password = '';

  Password({required String password}) : _password = password;

  bool isValid() {
    return _password.length >= 8 &&
           _password.length <= 16 &&
           _password.contains(RegExp(r'[0-9]')) &&
           _password.contains(RegExp(r'[a-z]')) &&
           _password.contains(RegExp(r'[A-Z]'));
  }
//getter
  String get password {
    return _password;
  }
//setter
  set password(String newPassword) {
    _password = newPassword;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
