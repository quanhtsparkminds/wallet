class AppString {
  AppString._();

  //Api call error
  static const cancelRequest = 'Request to API server was cancelled';
  static const connectionTimeOut = 'Connection timeout with API server';
  static const receiveTimeOut = 'Receive timeout in connection with API server';
  static const sendTimeOut = 'Send timeout in connection with API server';
  static const socketException = 'Check your internet connection';
  static const unexpectedError = 'Unexpected error occurred';
  static const unknownError = 'Something went wrong';
  static const duplicateEmail = 'Email has already been taken';

  //status code
  static const badRequest = 'Bad request';
  static const unauthorized = 'Unauthorized';
  static const forbidden = 'Forbidden';
  static const notFound = 'Not found';
  static const internalServerError = 'Internal server error';
  static const badGateway = 'Bad gateway';

  static const appFont = 'Roboto';


  // auth page
  static const String loginText = 'Login';
  static const String passwordText = 'Password';
  static const String placeholderPassword = 'Enter your password';
  static const String phoneText = 'Phone';
  static const String placeholderPhone = 'Enter your phone number';
  static const String forgotPassText = 'Forgot your password?';
  static const String facebookText = 'Facebook';
  static const String googleText = 'Google';
  static const String orText = 'Or';
  static const String nextBtn = 'Next';
  static const String timeTxt = 'Code will automatically expire after ';
  static const String secondText = ' second';
  static const String notRecivedCode = 'You still have not received code';
  static const String resendCode = ' Resent code';

}
