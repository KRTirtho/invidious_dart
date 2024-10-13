import 'package:invidious/src/endpoints/endpoint.dart';
import 'package:invidious/src/models/model.dart';

mixin StatsEndpoint on RootEndpoint {
  Future<InvidiousStatsResponse> stats() async {
    final response = await dio.get('/stats');
    return InvidiousStatsResponse.fromJson(response.data);
  }
}
