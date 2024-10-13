part of '../model.dart';

@freezed
class InvidiousImageObject with _$InvidiousImageObject {
  factory InvidiousImageObject({
    required String url,
    required int width,
    required int height,
  }) = _InvidiousImageObject;

  factory InvidiousImageObject.fromJson(Map<String, dynamic> json) =>
      _$InvidiousImageObjectFromJson(json);
}
