part of '../model.dart';

@freezed
class InvidiousVideoObject with _$InvidiousVideoObject {
  factory InvidiousVideoObject({
    required String type,
    required String title,
    required String videoId,
    required String author,
    required String authorId,
    required String authorUrl,
    required bool authorVerified,
    required List<InvidiousThumbnailObject> videoThumbnails,
    required String description,
    required String descriptionHtml,
    required int viewCount,
    required String viewCountText,
    required int published,
    required String publishedText,
    DateTime? premiereTimestamp,
    required bool liveNow,
    bool? premiere,
    bool? upcoming,
  }) = _InvidiousVideoObject;

  factory InvidiousVideoObject.fromJson(Map<String, dynamic> json) =>
      _$InvidiousVideoObjectFromJson(json);
}
