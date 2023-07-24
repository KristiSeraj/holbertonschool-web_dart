import 'package:http/http.dart' as http;
import 'dart:convert';

printRmCharacters() async {
    try {
        http.get(Uri.parse('https://rickandmortyapi.com/api/character')).then((response) {
            if (response.statusCode == 200) {
                var responseBody = jsonDecode(response.body);
                for (var item in responseBody['results']) {
                    print(item['name']);
                }
            } else {
                print('error');
            }
        }).catchError((error) {
            print('Error: $error');
        });
    } catch (error) {
        print('error caught: $error');
    }
}