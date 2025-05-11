
final class Formatter {
  static const String patternPassword = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';
  static const String patternMail = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  final RegExp _regExpPassword = RegExp(patternPassword);
  final RegExp _regExpMail = RegExp(patternMail);

  bool mailIsEmpty(String mail) {
    if (mail == null || mail.isEmpty) {
      return true;
    }
    return false;
  }

  bool passwordIsEmpty(String password) {
    if (password == null || password.isEmpty) {
      return true;
    }
    return false;
  }

  bool isCorrectMailLength(String mail) {
    if (mail.length >= 11 && !mailIsEmpty(mail)) {
      return true;
    }
    return false;
  }

  bool isCorrectPasswordLength(String password) {
    if (password.length >= 8 && password.length <=16 && !passwordIsEmpty(password)) {
      return true;
    }
    return false;
  }

  bool isCorrectMailFormat(String mail) {
    if (_regExpMail.hasMatch(mail) && isCorrectMailLength(mail)) {
      return true;
    }
    return false;
  }

  bool isCorrectPasswordFormat(String password) {
    if (_regExpPassword.hasMatch(password) && isCorrectPasswordLength(password)) {
      return true;
    }
    return false;
  }

  bool isAllCorrect(String mail, String password) {
    if (isCorrectMailFormat(mail) && isCorrectPasswordFormat(password)) {
      return true;
    }
    return false;
  }
}
