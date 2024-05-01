import 'package:nectarapp/api/end_points.dart';

class SignUpModel {
  final bool isAuthenticated;
  final String id;
  final String email;
  final String token;
  final String userName;
  final String phoneNumber;

  SignUpModel(
      {required this.isAuthenticated,
      required this.id,
      required this.email,
      required this.token,
      required this.userName,
      required this.phoneNumber});
  factory SignUpModel.fromjson(Map<String, dynamic> json) {
    return SignUpModel(
      isAuthenticated: json['data'][ApiKeys.isAuthenticated],
      id: json['data'][ApiKeys.id],
      email: json['data'][ApiKeys.email],
      token: json['data'][ApiKeys.token],
      userName: json['data'][ApiKeys.userName],
      phoneNumber: json['data'][ApiKeys.phoneNumber],
    );
  }
}


 
