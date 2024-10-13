part of '../model.dart';

@freezed
class InvidiousResolveUrlResponse with _$InvidiousResolveUrlResponse {
  const factory InvidiousResolveUrlResponse({
    String? ucid,
    String? videoId,
    String? playlistId,
    String? startTimeSeconds,
    String? params,
    required String pageType,
  }) = _InvidiousResolveUrlResponse;

  factory InvidiousResolveUrlResponse.fromJson(Map<String, dynamic> json) =>
      _$InvidiousResolveUrlResponseFromJson(json);
}
