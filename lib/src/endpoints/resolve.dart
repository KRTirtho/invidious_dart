import 'package:invidious/src/endpoints/endpoint.dart';
import 'package:invidious/src/models/model.dart';

mixin ResolveUrlEndpoint on RootEndpoint {
  Future<InvidiousResolveUrlResponse> resolveUrl(String url) async {
    final response = await dio.get('/resolveurl', queryParameters: {
      'url': url,
    });
    return InvidiousResolveUrlResponse.fromJson(response.data);
  }
}
