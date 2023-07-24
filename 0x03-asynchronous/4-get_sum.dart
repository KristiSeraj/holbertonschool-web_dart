import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
    try {
        var userData = await fetchUserData();
        Map<String, dynamic> jsonMap = jsonDecode(userData);
        var userProductsJson = await fetchUserOrders(jsonMap['id']);
        var userProducts = jsonDecode(userProductsJson);
        var sum = 0.0;
        for (var item in userProducts) {
            sum = sum + jsonDecode(await fetchProductPrice(item)).toDouble();
        }
        return sum;
    } catch (error) {
        return -1;
    }
}