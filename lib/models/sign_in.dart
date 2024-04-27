import 'package:nectarapp/api/end_points.dart';

class SignInModel {
  final bool isAuthenticated;
  final String id;
  final String email;
  final String token;
  final String userName;

  SignInModel(
      {required this.isAuthenticated,
      required this.id,
      required this.email,
      required this.token,
      required this.userName});

  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return SignInModel(
      isAuthenticated: json['data'][ApiKeys.isAuthenticated],
      id: json['data'][ApiKeys.id],
      email: json['data'][ApiKeys.email],
      token: json['data'][ApiKeys.token],
      userName: json['data'][ApiKeys.userName],
    );
  }
}
