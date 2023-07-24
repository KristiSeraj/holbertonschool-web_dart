import '4-util.dart';
import 'dart:convert';

Future<num> calculateTotal() async {
    try {
        var userData = await fetchUserData();
        Map<String, dynamic> jsonMap = jsonDecode(userData);
        var userProductsJson = await fetchUserOrders(jsonMap['id']);
        var userProducts = jsonDecode(userProductsJson);
        num sum = 0;
        for (var item in userProducts) {
            sum += jsonDecode(await fetchProductPrice(item));
        }
        return sum;
    } catch (error) {
        return -1;
    }
}