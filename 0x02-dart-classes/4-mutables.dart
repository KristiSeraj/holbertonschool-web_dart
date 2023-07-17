class Password {
    String _password;

    Password({String password = ''}) : _password = password;
    
    String get password => _password;

    set password(String value) {
        _password = value;
    }

    bool isValid() {
        if ((_password.length > 8 && _password.length < 16) && _password.contains(RegExp(r'^(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[0-9])'))) {
            return true;
        } else {
            return false;
        }
    }

    String toString() {
        return 'Your Password is: $_password';
    }
}