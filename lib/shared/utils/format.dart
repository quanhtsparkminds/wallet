class Formart {
  static String formatErrFirebaseLoginToString(String err) {
    String message = '';
    switch (err) {
      case 'ERROR_ARGUMENT_ERROR':
        message = 'Vui lòng nhập đầy đủ dữ liệu';
        break;
      case 'ERROR_OPERATION_NOT_ALLOWED':
        message = 'Phương thức đăng nhập này chưa được cho phép';
        break;
      case 'user-disabled':
        message = 'Tài khoản này đã bị khoá';
        break;
      case 'invalid-email':
        message = 'Định dạng Email không đúng';
        break;
      case 'user-not-found':
        message = 'Tài khoản không tồn tại';
        break;
      case 'wrong-password':
        message = 'Sai mật khẩu, vui lòng nhập lại';
        break;
      case 'ERROR_EMAIL_ALREADY_IN_USE':
        message = 'Email này đã được sử dụng. Vui lòng đăng nhập';
        break;
      case 'too-many-requests':
        message = 'Quá giới hạn số lần yêu cầu, xin hãy thử lại sau';
        break;
      case 'invalid-verification-code':
        message = 'Mã xác nhận không chính xác';
        break;
      case 'invalid-phone-number':
        message = 'Số điện thoại không hợp lệ';
        break;
      case 'ERROR_SESSION_EXPIRED':
        message = 'Mã xác nhận đã hết hạn, nhấn gửi lại.';
        break;
      case 'missing-client-identifier':
        message = 'Gửi yêu cầu lỗi';
        break;
      default:
        message = 'Lỗi Đăng Nhập';
    }
    return message;
  }
}