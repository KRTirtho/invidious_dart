part of '../model.dart';

@freezed
class InvidiousMixResponse with _$InvidiousMixResponse {
  const factory InvidiousMixResponse({
    required String title,
    required String mixId,
    required List<InvidiousMixResponseVideo> videos,
  }) = _InvidiousMixResponse;

  factory InvidiousMixResponse.fromJson(Map<String, dynamic> json) =>
      _$InvidiousMixResponseFromJson(json);
}

@freezed
class InvidiousMixResponseVideo with _$InvidiousMixResponseVideo {
  const factory InvidiousMixResponseVideo({
    required String title,
    required String videoId,
    required String author,
    required String authorId,
    required String authorUrl,
    required List<InvidiousThumbnailObject> videoThumbnails,
    required int index,
    required int lengthSeconds,
  }) = _InvidiousMixResponseVideo;

  factory InvidiousMixResponseVideo.fromJson(Map<String, dynamic> json) =>
      _$InvidiousMixResponseVideoFromJson(json);
}
