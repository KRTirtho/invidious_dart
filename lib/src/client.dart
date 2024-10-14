import 'package:dio/dio.dart';
import 'package:invidious/src/endpoints/annotations.dart';
import 'package:invidious/src/endpoints/browse.dart';
import 'package:invidious/src/endpoints/clips.dart';
import 'package:invidious/src/endpoints/endpoint.dart';
import 'package:invidious/src/endpoints/instances.dart';
import 'package:invidious/src/endpoints/mixes.dart';
import 'package:invidious/src/endpoints/playlist.dart';
import 'package:invidious/src/endpoints/resolve.dart';
import 'package:invidious/src/endpoints/search.dart';
import 'package:invidious/src/endpoints/stats.dart';
import 'package:invidious/src/endpoints/video.dart';

class InvidiousClient extends RootEndpoint
    with
        InstancesEndpoint,
        StatsEndpoint,
        AnnotationsEndpoint,
        ClipsEndpoint,
        MixesEndpoint,
        ResolveUrlEndpoint,
        PlaylistEndpoint {
  late final BrowsEndpoint browse;
  late final SearchEndpoint search;
  late final VideoEndpoint videos;

  InvidiousClient({
    required String server,
  }) : super(
          BaseOptions(
            baseUrl: "$server/api/v1",
            responseType: ResponseType.json,
          ),
        ) {
    videos = VideoEndpoint(dio);
    browse = BrowsEndpoint(dio);
    search = SearchEndpoint(dio);
  }
}
