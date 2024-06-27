import '0-utils.dart';

Future<void> userCount() async {
  int count = await fetchUserData();
  print(count);
}
