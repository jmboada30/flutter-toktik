import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getFavoriteVideosByUse(String useId);
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
