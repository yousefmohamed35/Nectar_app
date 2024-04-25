import 'package:dio/dio.dart';
import 'package:nectarapp/api/api_consumer.dart';
import 'package:nectarapp/api/api_interceptors.dart';
import 'package:nectarapp/api/end_points.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl=EndPoints.baseUrl;
    dio.interceptors.add(ApiInterceptors());
  }
  @override
  Future delete(
      String path, Object? data, Map<String, dynamic>? queryParameters) async {
    try {
      final respnse =
          await dio.delete(path, data: data, queryParameters: queryParameters);
      return respnse.data;
    } on DioException catch (e) {
      return e.toString();
    }
  }

  @override
  Future get(
      String path, Object? data, Map<String, dynamic>? queryParameters) async {
    try {
      final respnse =
          await dio.get(path, data: data, queryParameters: queryParameters);
      return respnse.data;
    } on DioException catch (e) {
      return e.toString();
    }
  }

  @override
  Future patch(
      String path, Object? data, Map<String, dynamic>? queryParameters) async {
    try {
      final respnse =
          await dio.patch(path, data: data, queryParameters: queryParameters);
      return respnse.data;
    } on DioException catch (e) {
      return e.toString();
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
      return e.toString();
    }
  }
}
