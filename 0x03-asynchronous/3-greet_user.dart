import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
    try {
        var a = await fetchUserData();
        Map<String, dynamic> jsonMap = jsonDecode(a);
        return 'Hello ${jsonMap['username']}';
    } catch (error) {
        return 'error caught: $error';
    }
}

Future<String> loginUser() async {
    try {

        if (await checkCredentials() == true) {
            print('There is a user: true');
            return await greetUser();
        } else {
            print('There is a user: false');
            return 'Wrong credentials';
        }
    } catch (error) {
        return 'error caught: $error';
    }
}