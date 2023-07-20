import '6-password.dart';

class User extends Password {
    String? name;
    int? age;
    double? height;
    int? id;
    String? user_password;

    User({this.user_password, this.name, this.age, this.height, this.id}) : super();


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'age': age,
            'height': height
        };
    }

    static User fromJson(Map<dynamic, dynamic> userJson) {
        return User(
            name: userJson['name'],
            age: userJson['age'],
            id: userJson['id'],
            height: userJson['height']
        );
    }

    String toString() {
        return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${Password}';
    }
}