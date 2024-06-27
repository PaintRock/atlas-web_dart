import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    String userId = jsonDecode(await fetchUserData())['id'];
    List<dynamic> orders = jsonDecode(await fetchUserOrders(userId));
    
    double total = 0;
    for (String product in orders) {
      total += double.parse(await fetchProductPrice(product));
    }
    
    return total.round();
  } catch (error) {
    return -1;
  }
}
