mixin ValidationMixin {
  String? validateEmail(String value) {
    if (!value.contains('@'))
      return 'Please enter a valid email.';
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 8)
      return 'Password is required and must be 8+ characters';
    return null;
  }
  
}