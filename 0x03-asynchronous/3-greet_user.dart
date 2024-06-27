import '3-util.dart';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    String username = userData.split('"')[7];
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool isValidUser = await checkCredentials();
    print('There is a user: $isValidUser');
    return isValidUser ? await greetUser() : 'Wrong credentials';
  } catch (error) {
    return 'error caught: $error';
  }
}