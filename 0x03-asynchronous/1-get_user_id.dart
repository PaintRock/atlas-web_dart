import '1-util.dart';

Future<String> getUserId() async {
  String userData = await fetchUserData();
  return userData.split('"')[3];
}