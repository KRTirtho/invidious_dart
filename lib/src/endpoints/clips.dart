import 'package:invidious/src/endpoints/endpoint.dart';
import 'package:invidious/src/models/model.dart';

mixin ClipsEndpoint on RootEndpoint {
  Future<InvidiousClipResponse> clips(String id) async {
    final response = await dio.get('/clips', queryParameters: {
      'id': id,
    });
    return InvidiousClipResponse.fromJson(response.data);
  }
}
