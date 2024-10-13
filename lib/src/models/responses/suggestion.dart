part of '../model.dart';

@freezed
class InvidiousSearchSuggestionResponse
    with _$InvidiousSearchSuggestionResponse {
  factory InvidiousSearchSuggestionResponse({
    required String query,
    required List<String> suggestions,
  }) = _InvidiousSearchSuggestionResponse;

  factory InvidiousSearchSuggestionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$InvidiousSearchSuggestionResponseFromJson(json);
}
