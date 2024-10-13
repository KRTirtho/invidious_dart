part of '../model.dart';

enum InvidiousCommentSort {
  top("top"),
  newest("new");

  final String value;
  const InvidiousCommentSort(this.value);
}

enum InvidiousCommentSource {
  youtube,
  reddit,
}

@freezed
class InvidiousCommentResponse with _$InvidiousCommentResponse {
  const factory InvidiousCommentResponse({
    int? commentCount,
    required String videoId,
    required List<InvidiousCommentResponseComment> comments,
    String? continuation,
  }) = _InvidiousCommentResponse;

  factory InvidiousCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$InvidiousCommentResponseFromJson(json);
}

@freezed
class InvidiousCommentResponseComment with _$InvidiousCommentResponseComment {
  const factory InvidiousCommentResponseComment({
    required String author,
    required List<InvidiousImageObject> authorThumbnails,
    required String authorId,
    required String authorUrl,
    required bool isEdited,
    required bool isPinned,
    required String content,
    required String contentHtml,
    required int published,
    required String publishedText,
    required int likeCount,
    required String commentId,
    required bool authorIsChannelOwner,
    InvidiousCommentResponseCreatorHeart? creatorHeart,
    InvidiousCommentResponseReplies? replies,
  }) = _InvidiousCommentResponseComment;

  factory InvidiousCommentResponseComment.fromJson(Map<String, dynamic> json) =>
      _$InvidiousCommentResponseCommentFromJson(json);
}

@freezed
class InvidiousCommentResponseCreatorHeart
    with _$InvidiousCommentResponseCreatorHeart {
  const factory InvidiousCommentResponseCreatorHeart({
    required String creatorThumbnail,
    required String creatorName,
  }) = _InvidiousCommentResponseCreatorHeart;

  factory InvidiousCommentResponseCreatorHeart.fromJson(
          Map<String, dynamic> json) =>
      _$InvidiousCommentResponseCreatorHeartFromJson(json);
}

@freezed
class InvidiousCommentResponseReplies with _$InvidiousCommentResponseReplies {
  const factory InvidiousCommentResponseReplies({
    required int replyCount,
    required String continuation,
  }) = _InvidiousCommentResponseReplies;

  factory InvidiousCommentResponseReplies.fromJson(Map<String, dynamic> json) =>
      _$InvidiousCommentResponseRepliesFromJson(json);
}
