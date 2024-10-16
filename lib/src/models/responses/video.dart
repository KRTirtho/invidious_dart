part of '../model.dart';

@freezed
class InvidiousVideoResponse with _$InvidiousVideoResponse {
  const factory InvidiousVideoResponse({
    required String type,
    required String title,
    required String videoId,
    required List<InvidiousThumbnailObject> videoThumbnails,
    required List<InvidiousVideoResponseStoryboard> storyboards,
    required String description,
    required String descriptionHtml,
    required int published,
    required String publishedText,
    required List<String> keywords,
    required int viewCount,
    required int likeCount,
    required int dislikeCount,
    required bool paid,
    required bool premium,
    required bool isFamilyFriendly,
    required List<String> allowedRegions,
    required String genre,
    String? genreUrl,
    required String author,
    required String authorId,
    required String authorUrl,
    required List<InvidiousImageObject> authorThumbnails,
    required String subCountText,
    required int lengthSeconds,
    required bool allowRatings,
    required double rating,
    required bool isListed,
    required bool liveNow,
    required bool isPostLiveDvr,
    required bool isUpcoming,
    String? dashUrl,
    int? premiereTimestamp,
    String? hlsUrl,
    required List<InvidiousVideoResponseAdaptiveFormat> adaptiveFormats,
    required List<InvidiousVideoResponseFormatStream> formatStreams,
    required List<InvidiousVideoResponseCaption> captions,
    required List<InvidiousVideoResponseRecommendedVideo> recommendedVideos,
  }) = _InvidiousVideoResponse;

  factory InvidiousVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$InvidiousVideoResponseFromJson(json);
}

@freezed
class InvidiousVideoResponseStoryboard with _$InvidiousVideoResponseStoryboard {
  const factory InvidiousVideoResponseStoryboard({
    required String url,
    required String templateUrl,
    required int width,
    required int height,
    required int count,
    required int interval,
    required int storyboardWidth,
    required int storyboardHeight,
    required int storyboardCount,
  }) = _InvidiousVideoResponseStoryboard;

  factory InvidiousVideoResponseStoryboard.fromJson(
          Map<String, dynamic> json) =>
      _$InvidiousVideoResponseStoryboardFromJson(json);
}

@freezed
class InvidiousVideoResponseAdaptiveFormat
    with _$InvidiousVideoResponseAdaptiveFormat {
  const factory InvidiousVideoResponseAdaptiveFormat({
    required String index,
    required String bitrate,
    required String init,
    required String url,
    required String itag,
    required String type,
    required String clen,
    required String lmt,
    required String projectionType,
    String? container,
    String? encoding,
    String? qualityLabel,
    String? resolution,
  }) = _InvidiousVideoResponseAdaptiveFormat;

  factory InvidiousVideoResponseAdaptiveFormat.fromJson(
          Map<String, dynamic> json) =>
      _$InvidiousVideoResponseAdaptiveFormatFromJson(json);
}

@freezed
class InvidiousVideoResponseFormatStream
    with _$InvidiousVideoResponseFormatStream {
  const factory InvidiousVideoResponseFormatStream({
    required String url,
    required String itag,
    required String type,
    required String quality,
    required String container,
    required String encoding,
    required String qualityLabel,
    required String resolution,
    required String size,
  }) = _InvidiousVideoResponseFormatStream;

  factory InvidiousVideoResponseFormatStream.fromJson(
          Map<String, dynamic> json) =>
      _$InvidiousVideoResponseFormatStreamFromJson(json);
}

@freezed
class InvidiousVideoResponseCaption with _$InvidiousVideoResponseCaption {
  const factory InvidiousVideoResponseCaption({
    required String label,
    @JsonKey(name: 'language_code') required String languageCode,
    required String url,
  }) = _InvidiousVideoResponseCaption;

  factory InvidiousVideoResponseCaption.fromJson(Map<String, dynamic> json) =>
      _$InvidiousVideoResponseCaptionFromJson(json);
}

@freezed
class InvidiousVideoResponseRecommendedVideo
    with _$InvidiousVideoResponseRecommendedVideo {
  const factory InvidiousVideoResponseRecommendedVideo({
    required String videoId,
    required String title,
    required List<InvidiousThumbnailObject> videoThumbnails,
    required String author,
    required int lengthSeconds,
    required String viewCountText,
  }) = _InvidiousVideoResponseRecommendedVideo;

  factory InvidiousVideoResponseRecommendedVideo.fromJson(
          Map<String, dynamic> json) =>
      _$InvidiousVideoResponseRecommendedVideoFromJson(json);
}
