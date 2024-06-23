class Password {
  String password;
  Password(this.password);

  bool isValid() {
    if (password.length < 8 || password.length > 16 || !password.contains(RegExp(r'[0-9]')) || !password.contains(RegExp(r'[a-z]')) || !password.contains(RegExp(r'[A-Z]')) || !password.contains(RegExp(r'[!@#%^&*]')){
      return false;
    }
    return true;
  }
}