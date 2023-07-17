class User {
    String? name;
    int? age;
    double? height;
    int? id;

    User({this.name, this.age, this.height, this.id});


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
        return 'User(id : $id, name: $name, age: $age, height: $height)';
    }
}