import 'package:dio/dio.dart';
import 'package:invidious/src/endpoints/endpoint.dart';
import 'package:invidious/src/models/model.dart';

class VideoEndpoint extends Endpoint {
  VideoEndpoint(super.dio);

  Future<InvidiousVideoResponse> get(
    String videoId, {
    String region = "US",
  }) async {
    final response = await dio.get('/videos/$videoId', queryParameters: {
      "region": region,
    });
    return InvidiousVideoResponse.fromJson(response.data);
  }

  Future<InvidiousCommentResponse> comments(
    String videoId, {
    InvidiousCommentSort? sortBy,
    InvidiousCommentSource? source,
    String? continuation,
  }) async {
    final response = await dio.get('/comments/$videoId', queryParameters: {
      if (sortBy != null) "sort_by": sortBy.value,
      if (source != null) "source": source.name,
      if (continuation != null) "continuation": continuation,
    });
    return InvidiousCommentResponse.fromJson(response.data);
  }

  Future<InvidiousCaptionResponse> captions(
    String videoId, {
    String? lang,
    String? tlang,
    String region = "US",
  }) async {
    final response = await dio.get(
      '/captions/$videoId',
      queryParameters: {
        if (lang != null) "lang": lang,
        if (tlang != null) "tlang": tlang,
        "region": region,
      },
    );
    return InvidiousCaptionResponse.fromJson(response.data);
  }

  Future<String> captionsWebVTT(
    String videoId, {
    required String lang,
    String? tlang,
    String region = "US",
  }) async {
    final response = await dio.get(
      '/captions/$videoId',
      queryParameters: {
        "lang": lang,
        if (tlang != null) "tlang": tlang,
        "region": region,
      },
      options: Options(responseType: ResponseType.plain),
    );
    return response.data as String;
  }

  Future<List<InvidiousVideoObject>> listByHashtag(
    String tag, {
    int page = 0,
  }) async {
    final response = await dio.get('/hashtag/$tag', queryParameters: {
      "page": page,
    });

    return ((response.data as Map)["results"] as List)
        .map((e) => InvidiousVideoObject.fromJson(e))
        .toList();
  }
}
