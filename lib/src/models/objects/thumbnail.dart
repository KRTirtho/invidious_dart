part of '../model.dart';

@freezed
class InvidiousThumbnailObject with _$InvidiousThumbnailObject {
  const factory InvidiousThumbnailObject({
    required String quality,
    required String url,
    required int width,
    required int height,
  }) = _InvidiousThumbnailObject;

  factory InvidiousThumbnailObject.fromJson(Map<String, dynamic> json) =>
      _$InvidiousThumbnailObjectFromJson(json);
}
