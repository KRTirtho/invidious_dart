import 'package:invidious/src/endpoints/endpoint.dart';
import 'package:invidious/src/models/model.dart';

mixin MixesEndpoint on RootEndpoint {
  Future<InvidiousMixResponse> mixes(String mixId) async {
    final response = await dio.get('/mixes/$mixId');
    return InvidiousMixResponse.fromJson(response.data);
  }
}
