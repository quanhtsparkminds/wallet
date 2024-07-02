const phonePattern = r'^[+]{0,1}[0-9]{5,13}$';
const emailPattern =
    r'^[a-zA-Z0-9](([.]{1}|[_]{1})?[a-zA-Z0-9])*[@]([a-z0-9]+([.]{1}|-)?)*[a-zA-Z0-9]+[.]{1}[a-z]{2,253}$';
bool isMatchedPattern(String pattern, dynamic input) {
  if (!RegExp(pattern).hasMatch(input)) {
    return false;
  }

  return true;
}


class Validator {

  static bool isOtpCode(String password) {
    if (password.isEmpty || password.length < 6) {
      return false;
    }

    return true;
  }

  static bool isPhoneNumber(String phoneNumber) {
    if (phoneNumber.isEmpty || !isMatchedPattern(phonePattern, phoneNumber)) {
      return false;
    }

    return true;
  }


  static bool isEmail(String email) {
    if (email.isEmpty ||
        email.length < 6 ||
        !isMatchedPattern(emailPattern, email)) {
      return false;
    }

    return true;
  }
}