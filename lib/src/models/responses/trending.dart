part of '../model.dart';

enum InvidiousTrendingVideoType {
  music("music"),
  gaming("gaming"),
  movies("movies"),
  defaultType("default");

  final String value;
  const InvidiousTrendingVideoType(this.value);
}

@freezed
class InvidiousTrendingVideo with _$InvidiousTrendingVideo {
  const factory InvidiousTrendingVideo({
    required String title,
    required String videoId,
    required List<InvidiousThumbnailObject> videoThumbnails,
    required int lengthSeconds,
    required int viewCount,
    required String author,
    required String authorId,
    required String authorUrl,
    required int published,
    required String publishedText,
    required String description,
    required String descriptionHtml,
    required bool liveNow,
    bool? paid,
    required bool premium,
  }) = _InvidiousTrendingVideo;

  factory InvidiousTrendingVideo.fromJson(Map<String, dynamic> json) =>
      _$InvidiousTrendingVideoFromJson(json);
}
