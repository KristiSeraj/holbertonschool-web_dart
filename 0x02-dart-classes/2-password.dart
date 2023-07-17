class Password {
    String password;

    Password([this.password = '']);

    bool isValid() {
        if ((password.length > 8 && password.length < 16) && password.contains(RegExp(r'^(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[0-9])'))) {
            return true;
        } else {
            return false;
        }
    }

    String toString() {
        return 'Your Password is: $password';
    }
}