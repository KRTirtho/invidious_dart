import 'package:invidious/src/endpoints/endpoint.dart';
import 'package:invidious/src/models/model.dart';

mixin InstancesEndpoint on RootEndpoint {
  Future<List<InvidiousInstanceResponse>> instances() async {
    final response = await dio.get(
      'https://api.invidious.io/instances.json?sort_by=type,users',
    );

    final List instances = response.data;

    return instances.map((instance) {
      return InvidiousInstanceResponse.fromJson({
        'name': instance.first,
        'details': instance.last,
      });
    }).toList();
  }
}
