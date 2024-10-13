part of '../model.dart';

@freezed
class InvidiousCaptionResponse with _$InvidiousCaptionResponse {
  factory InvidiousCaptionResponse({
    required List<InvidiousCaptionResponseCaption> captions,
  }) = _InvidiousCaptionResponse;

  factory InvidiousCaptionResponse.fromJson(Map<String, dynamic> json) =>
      _$InvidiousCaptionResponseFromJson(json);
}

@freezed
class InvidiousCaptionResponseCaption with _$InvidiousCaptionResponseCaption {
  factory InvidiousCaptionResponseCaption({
    required String label,
    required String languageCode,
    required String url,
  }) = _InvidiousCaptionResponseCaption;

  factory InvidiousCaptionResponseCaption.fromJson(Map<String, dynamic> json) =>
      _$InvidiousCaptionResponseCaptionFromJson(json);
}
