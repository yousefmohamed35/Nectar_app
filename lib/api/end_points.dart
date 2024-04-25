class EndPoints {
  static const String baseUrl =
      "https://nectorteam-001-site1.etempurl.com/api/Account/";
  static const String login = "Login";
  static const String register = "Register";
  static const String changePassword = 'ChangePassword';
  static String sendNumForEmail({required String email}) {
    return 'SendNumForEmail?sendEmail=$email';
  }

  static String confirmNum({required String phoneNumber}) {
    return 'ConfirmNum?Num=$phoneNumber';
  }
}

class ApiKeys {
  static const String userName = 'username';
  static const String phoneNumber = 'phoneNumber';
  static const String password = 'password';
  static const String email = 'email';
  static const String isAuthenticated = 'isAuthenticated';
  static const String token = 'token';
  static const String id= 'id';
  static const String message = 'message';
  static const String statusCode = 'statusCode';
}
