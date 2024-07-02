enum AppRoleEnum { admin, customer, unknown }

class AppRole {
  AppRole._();
  static AppRoleEnum _role = AppRoleEnum.unknown;

  static AppRoleEnum get role => _role;
  static bool get isAdmin => _role == AppRoleEnum.admin;
  static bool get isCustomer => _role == AppRoleEnum.customer;

  static void setRole(String value) {
    if (value.isEmpty) return;
    if (value == 'customer') _role = AppRoleEnum.customer;
    if (value == 'admin') _role = AppRoleEnum.admin;
  }
}
