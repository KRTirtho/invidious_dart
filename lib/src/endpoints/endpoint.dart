import 'package:dio/dio.dart';

abstract class Endpoint {
  final Dio dio;

  Endpoint(this.dio);
}

abstract class RootEndpoint {
  final Dio dio;

  RootEndpoint(BaseOptions options) : dio = Dio(options);
}
