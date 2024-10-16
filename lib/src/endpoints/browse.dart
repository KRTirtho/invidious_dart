import 'package:invidious/src/endpoints/endpoint.dart';
import 'package:invidious/src/models/model.dart';

class BrowsEndpoint extends Endpoint {
  BrowsEndpoint(super.dio);

  Future<List<InvidiousTrendingVideo>> trending({
    InvidiousTrendingVideoType type = InvidiousTrendingVideoType.defaultType,
    String? region,
  }) async {
    final response = await dio.get('/trending', queryParameters: {
      "type": type.value,
      if (region != null) "region": region,
    });
    return (response.data as List)
        .map((e) => InvidiousTrendingVideo.fromJson(e))
        .toList();
  }

  Future<List<InvidiousPopularVideo>> popular() async {
    final response = await dio.get('/popular');
    return (response.data as List)
        .map((e) => InvidiousPopularVideo.fromJson(e))
        .toList();
  }
}
