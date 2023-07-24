import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
    var a = await fetchUserData();
    Map<String, dynamic> jsonMap = jsonDecode(a);
    return jsonMap['id'];
}