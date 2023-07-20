import '6-password.dart';

class User extends Password {
    String? name;
    int? age;
    double? height;
    int? id;
    String? user_password;

    User({this.user_password, this.name, this.age, this.height, this.id}) : super(password: user_password);

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

    @override
    String toString() {
        final password = new Password(password: user_password);

        return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${password.isValid()})';
    }
}