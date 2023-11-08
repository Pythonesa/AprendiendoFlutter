import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostsDatasource{
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId);
}