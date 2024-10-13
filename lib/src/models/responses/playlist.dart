part of '../model.dart';

@freezed
class InvidiousPlaylistResponse with _$InvidiousPlaylistResponse {
  const factory InvidiousPlaylistResponse({
    required String title,
    required String playlistId,
    required String author,
    required String authorId,
    required List<InvidiousImageObject> authorThumbnails,
    required String description,
    required String descriptionHtml,
    required int videoCount,
    required int viewCount,
    required int updated,
    required List<InvidiousPlaylistResponseVideo> videos,
  }) = _InvidiousPlaylistResponse;

  factory InvidiousPlaylistResponse.fromJson(Map<String, dynamic> json) =>
      _$InvidiousPlaylistResponseFromJson(json);
}

@freezed
class InvidiousPlaylistResponseVideo with _$InvidiousPlaylistResponseVideo {
  const factory InvidiousPlaylistResponseVideo({
    required String title,
    required String videoId,
    required String author,
    required String authorId,
    required String authorUrl,
    required List<InvidiousThumbnailObject> videoThumbnails,
    required int index,
    required int lengthSeconds,
  }) = _InvidiousPlaylistResponseVideo;

  factory InvidiousPlaylistResponseVideo.fromJson(Map<String, dynamic> json) =>
      _$InvidiousPlaylistResponseVideoFromJson(json);
}
