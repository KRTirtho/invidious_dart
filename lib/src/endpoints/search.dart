import 'package:invidious/src/endpoints/endpoint.dart';
import 'package:invidious/src/models/model.dart';

class SearchEndpoint extends Endpoint {
  SearchEndpoint(super.dio);

  Future<InvidiousSearchSuggestionResponse> suggestions(String query) async {
    final response = await dio.get('/search/suggestions', queryParameters: {
      'q': query,
    });

    return InvidiousSearchSuggestionResponse.fromJson(response.data);
  }

  Future<List<InvidiousSearchResponse>> list(
    String query, {
    int? page,
    InvidiousSearchSort? sort,
    InvidiousSearchDate? date,
    InvidiousSearchDuration? duration,
    InvidiousSearchType type = InvidiousSearchType.all,
    Set<InvidiousSearchFeatures>? features,
    String region = 'US',
  }) async {
    final response = await dio.get('/search', queryParameters: {
      'q': query,
      if (page != null) 'page': page,
      if (sort != null) 'sort': sort.name,
      if (date != null) 'date': date.name,
      if (duration != null) 'duration': duration.name,
      'type': type.name,
      if (features != null) 'features': features.map((e) => e.value).join(','),
      'region': region,
    });

    return (response.data as List)
        .map((e) => InvidiousSearchResponse.fromJson(e))
        .toList();
  }
}
