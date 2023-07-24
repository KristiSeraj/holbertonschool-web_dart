import '0-util.dart';

Future<void> usersCount() async {
    var user = await fetchUsersCount();
    print(user);
}