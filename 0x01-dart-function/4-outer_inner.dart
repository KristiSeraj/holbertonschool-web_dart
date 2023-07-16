void outer(String name, String id) {
    print(inner(name, id));
}

String inner(String name, String id) {
    var parts = name.split(' ');
    var lastName = parts[0];
    var firstName = parts[1];
    firstName = firstName.substring(0, 1);
    return 'Hello Agent ${firstName}.${lastName} your id is $id';
}