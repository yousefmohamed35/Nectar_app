import 'package:dio/dio.dart';
import 'package:nectarapp/errors/error_model.dart';

class ServerExpetion implements Exception {
  final ErrorModel erorrModel;

  ServerExpetion({required this.erorrModel});

}
void handleDioExceptios(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        throw ServerExpetion(erorrModel: ErrorModel.fromJson(e.response!.data),);
      case DioExceptionType.sendTimeout:
      throw ServerExpetion(erorrModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.receiveTimeout:
      throw ServerExpetion(erorrModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.badCertificate:
      throw ServerExpetion(erorrModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.badResponse:
      throw ServerExpetion(erorrModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.cancel:
      throw ServerExpetion(erorrModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.connectionError:
      throw ServerExpetion(erorrModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.unknown:
      throw ServerExpetion(erorrModel: ErrorModel.fromJson(e.response!.data));
    }
  }