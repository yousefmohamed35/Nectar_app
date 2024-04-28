import 'package:dio/dio.dart';
import 'package:nectarapp/api/api_consumer.dart';
import 'package:nectarapp/api/api_interceptors.dart';
import 'package:nectarapp/api/end_points.dart';
import 'package:nectarapp/errors/exception.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoints.baseUrl;
    dio.interceptors.add(ApiInterceptors());
  }

  @override
  Future get(
      String path, Object? data, Map<String, dynamic>? queryParameters) async {
    try {
      final respnse =
          await dio.get(path, data: data, queryParameters: queryParameters);
      return respnse.data;
    } on DioException catch (e) {
      handleDioExceptios(e);
    }
  }

  @override
  Future post(
      String path, Object? data, Map<String, dynamic>? queryParameters) async {
    try {
      final respnse =
          await dio.post(path, data: data, queryParameters: queryParameters);
      return respnse.data;
    } on DioException catch (e) {
      handleDioExceptios(e);
    }
  }
}
