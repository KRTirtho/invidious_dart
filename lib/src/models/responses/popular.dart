part of '../model.dart';

@freezed
class InvidiousPopularVideo with _$InvidiousPopularVideo {
  const factory InvidiousPopularVideo({
    required String type,
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
  }) = _InvidiousPopularVideo;

  factory InvidiousPopularVideo.fromJson(Map<String, dynamic> json) =>
      _$InvidiousPopularVideoFromJson(json);
}
