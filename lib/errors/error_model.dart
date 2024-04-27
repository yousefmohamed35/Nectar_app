import 'package:nectarapp/api/end_points.dart';

class ErrorModel{
  final String message;
  final int statusCode;

  ErrorModel({required this.message, required this.statusCode});
  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      message: json[ApiKeys.message],
      statusCode: json[ApiKeys.statusCode],
    );
  }
  
}