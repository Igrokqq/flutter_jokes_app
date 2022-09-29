import "package:dio/dio.dart";

class HttpClient {
  Dio init(BaseOptions options) {
    Dio dio = Dio(options);
    dio.interceptors.add(ApiInterceptors());
    return dio;
  }
}

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    print("onRequest");
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    super.onError(err, handler);

    print("onError $err");
  }
}
