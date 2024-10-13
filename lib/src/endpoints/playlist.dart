import 'package:invidious/src/endpoints/endpoint.dart';
import 'package:invidious/src/models/model.dart';

mixin PlaylistEndpoint on RootEndpoint {
  Future<InvidiousPlaylistResponse> playlist(
    String playlistId, {
    int page = 0,
  }) async {
    final response = await dio.get('/playlists/$playlistId', queryParameters: {
      'page': page,
    });
    return InvidiousPlaylistResponse.fromJson(response.data);
  }
}
