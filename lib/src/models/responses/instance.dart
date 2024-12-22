part of '../model.dart';

@freezed
class InvidiousInstanceResponse with _$InvidiousInstanceResponse {
  const factory InvidiousInstanceResponse({
    required String name,
    required InvidiousInstanceDetails details,
  }) = _InvidiousInstanceResponse;

  factory InvidiousInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$InvidiousInstanceResponseFromJson(json);
}

@freezed
class InvidiousInstanceDetails with _$InvidiousInstanceDetails {
  const factory InvidiousInstanceDetails({
    required String flag,
    required String region,
    InvidiousStats? stats,
    bool? cors,
    bool? api,
    required String type,
    required String uri,
    InvidiousMonitor? monitor,
  }) = _InvidiousInstanceDetails;

  factory InvidiousInstanceDetails.fromJson(Map<String, dynamic> json) =>
      _$InvidiousInstanceDetailsFromJson(json);
}

@freezed
class InvidiousStats with _$InvidiousStats {
  const factory InvidiousStats({
    required String version,
    required InvidiousSoftware software,
    required bool openRegistrations,
    required InvidiousUsage usage,
    required InvidiousMetadata metadata,
    required InvidiousPlayback playback,
  }) = _InvidiousStats;

  factory InvidiousStats.fromJson(Map<String, dynamic> json) =>
      _$InvidiousStatsFromJson(json);
}

@freezed
class InvidiousSoftware with _$InvidiousSoftware {
  const factory InvidiousSoftware({
    required String name,
    required String version,
    required String branch,
  }) = _InvidiousSoftware;

  factory InvidiousSoftware.fromJson(Map<String, dynamic> json) =>
      _$InvidiousSoftwareFromJson(json);
}

@freezed
class InvidiousUsage with _$InvidiousUsage {
  const factory InvidiousUsage({
    required InvidiousUsers users,
  }) = _InvidiousUsage;

  factory InvidiousUsage.fromJson(Map<String, dynamic> json) =>
      _$InvidiousUsageFromJson(json);
}

@freezed
class InvidiousUsers with _$InvidiousUsers {
  const factory InvidiousUsers({
    required int total,
    required int activeHalfyear,
    required int activeMonth,
  }) = _InvidiousUsers;

  factory InvidiousUsers.fromJson(Map<String, dynamic> json) =>
      _$InvidiousUsersFromJson(json);
}

@freezed
class InvidiousMetadata with _$InvidiousMetadata {
  const factory InvidiousMetadata({
    required int updatedAt,
    required int lastChannelRefreshedAt,
  }) = _InvidiousMetadata;

  factory InvidiousMetadata.fromJson(Map<String, dynamic> json) =>
      _$InvidiousMetadataFromJson(json);
}

@freezed
class InvidiousPlayback with _$InvidiousPlayback {
  const factory InvidiousPlayback() = _InvidiousPlayback;

  factory InvidiousPlayback.fromJson(Map<String, dynamic> json) =>
      _$InvidiousPlaybackFromJson(json);
}

@freezed
class InvidiousMonitor with _$InvidiousMonitor {
  const factory InvidiousMonitor({
    required String token,
    required String url,
    required String alias,
    @JsonKey(name: 'last_status') required int lastStatus,
    required double uptime,
    required bool down,
    @JsonKey(name: 'down_since') DateTime? downSince,
    @JsonKey(name: 'up_since') required DateTime upSince,
    String? error,
    required int period,
    @JsonKey(name: 'apdex_t') required int apdexT,
    @JsonKey(name: 'string_match') required String stringMatch,
    required bool enabled,
    required bool published,
    @JsonKey(name: 'disabled_locations')
    required List<String> disabledLocations,
    required List<String> recipients,
    @JsonKey(name: 'last_check_at') required DateTime lastCheckAt,
    @JsonKey(name: 'next_check_at') required DateTime nextCheckAt,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'mute_until') String? muteUntil,
    @JsonKey(name: 'favicon_url') required String faviconUrl,
    required InvidiousSSL ssl,
  }) = _InvidiousMonitor;

  factory InvidiousMonitor.fromJson(Map<String, dynamic> json) =>
      _$InvidiousMonitorFromJson(json);
}

@freezed
class InvidiousSSL with _$InvidiousSSL {
  const factory InvidiousSSL({
    @JsonKey(name: 'tested_at') required DateTime testedAt,
    @JsonKey(name: 'expires_at') required DateTime expiresAt,
    required bool valid,
    String? error,
  }) = _InvidiousSSL;

  factory InvidiousSSL.fromJson(Map<String, dynamic> json) =>
      _$InvidiousSSLFromJson(json);
}
