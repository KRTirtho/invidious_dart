import 'package:dio/dio.dart';
import 'package:invidious/src/endpoints/endpoint.dart';

mixin AnnotationsEndpoint on RootEndpoint {
  Future<String> annotations(String annotationId) async {
    final response = await dio.get(
      '/annotations/$annotationId',
      options: Options(responseType: ResponseType.plain),
    );
    return response.data as String;
  }
}
