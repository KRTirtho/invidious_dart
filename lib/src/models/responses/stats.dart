part of '../model.dart';

@freezed
class InvidiousStatsResponse with _$InvidiousStatsResponse {
  factory InvidiousStatsResponse({
    required String version,
    required InvidiousStatsResponseSoftware software,
    required bool openRegistrations,
    required InvidiousStatsResponseUsage usage,
    required InvidiousStatsResponseMetadata metadata,
    required InvidiousStatsResponsePlayback playback,
  }) = _InvidiousStatsResponse;

  factory InvidiousStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$InvidiousStatsResponseFromJson(json);
}

@freezed
class InvidiousStatsResponseSoftware with _$InvidiousStatsResponseSoftware {
  factory InvidiousStatsResponseSoftware({
    required String name,
    required String version,
    required String branch,
  }) = _InvidiousStatsResponseSoftware;

  factory InvidiousStatsResponseSoftware.fromJson(Map<String, dynamic> json) =>
      _$InvidiousStatsResponseSoftwareFromJson(json);
}

@freezed
class InvidiousStatsResponseUsage with _$InvidiousStatsResponseUsage {
  factory InvidiousStatsResponseUsage({
    required InvidiousStatsResponseUsageUsers users,
  }) = _InvidiousStatsResponseUsage;

  factory InvidiousStatsResponseUsage.fromJson(Map<String, dynamic> json) =>
      _$InvidiousStatsResponseUsageFromJson(json);
}

@freezed
class InvidiousStatsResponseUsageUsers with _$InvidiousStatsResponseUsageUsers {
  factory InvidiousStatsResponseUsageUsers({
    required int total,
    required int activeHalfyear,
    required int activeMonth,
  }) = _InvidiousStatsResponseUsageUsers;

  factory InvidiousStatsResponseUsageUsers.fromJson(
          Map<String, dynamic> json) =>
      _$InvidiousStatsResponseUsageUsersFromJson(json);
}

@freezed
class InvidiousStatsResponseMetadata with _$InvidiousStatsResponseMetadata {
  factory InvidiousStatsResponseMetadata({
    required int updatedAt,
    required int lastChannelRefreshedAt,
  }) = _InvidiousStatsResponseMetadata;

  factory InvidiousStatsResponseMetadata.fromJson(Map<String, dynamic> json) =>
      _$InvidiousStatsResponseMetadataFromJson(json);
}

@freezed
class InvidiousStatsResponsePlayback with _$InvidiousStatsResponsePlayback {
  factory InvidiousStatsResponsePlayback({
    int? totalRequests,
    int? successfulRequests,
    double? ratio,
  }) = _InvidiousStatsResponsePlayback;

  factory InvidiousStatsResponsePlayback.fromJson(Map<String, dynamic> json) =>
      _$InvidiousStatsResponsePlaybackFromJson(json);
}
