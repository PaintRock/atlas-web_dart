class Password {
  String password = '';

  Password();

  bool isValid() {
    return password.length >= 8 &&
           password.length <= 16 &&
           password.contains(RegExp(r'[0-9]')) &&
           password.contains(RegExp(r'[a-z]')) &&
           password.contains(RegExp(r'[A-Z]')) &&
           password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
void main() {
  final ps = Password();
  ps.password = "Just3z";
  if (ps.isValid() == true)
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");
  ps.password = "ShouldWorkf7ne";
  if (ps.isValid() == true)
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");
}