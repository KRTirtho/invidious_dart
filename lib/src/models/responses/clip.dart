part of '../model.dart';

@freezed
class InvidiousClipResponse with _$InvidiousClipResponse {
  factory InvidiousClipResponse({
    required DateTime startTime,
    required DateTime endTime,
    required String clipTitle,
    required InvidiousVideoObject video,
  }) = _InvidiousClipResponse;

  factory InvidiousClipResponse.fromJson(Map<String, dynamic> json) =>
      _$InvidiousClipResponseFromJson(json);
}
