abstract class ApiConsumer {
Future<dynamic>get(
    String path,
    Object? data,
    Map<String,dynamic>?queryParameters,

  );
Future<dynamic>  post(
    String path,
    Object? data,
    Map<String,dynamic>?queryParameters,

  );
}
