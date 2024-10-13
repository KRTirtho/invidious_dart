part of '../model.dart';

@freezed
class InvidiousPlaylistObject with _$InvidiousPlaylistObject {
  factory InvidiousPlaylistObject({
    required String type,
    required String title,
    required String playlistId,
    required String playlistThumbnail,
    required String author,
    required String authorId,
    required String authorUrl,
    required bool authorVerified,
    required int videoCount,
    required List<InvidiousPlaylistVideoObject> videos,
  }) = _InvidiousPlaylistObject;

  factory InvidiousPlaylistObject.fromJson(Map<String, dynamic> json) =>
      _$InvidiousPlaylistObjectFromJson(json);
}

@freezed
class InvidiousPlaylistVideoObject with _$InvidiousPlaylistVideoObject {
  factory InvidiousPlaylistVideoObject({
    required String title,
    required String videoId,
    required int lengthSeconds,
    required List<InvidiousThumbnailObject> videoThumbnails,
  }) = _InvidiousPlaylistVideoObject;

  factory InvidiousPlaylistVideoObject.fromJson(Map<String, dynamic> json) =>
      _$InvidiousPlaylistVideoObjectFromJson(json);
}
