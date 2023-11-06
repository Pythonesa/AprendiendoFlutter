import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel(
      {required this.name,
      required this.videoUrl,
      this.likes = 0,
      this.views = 0});

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) {
    return LocalVideoModel(
      name: json['name'] ?? 'No caption',
      videoUrl: json['videoUrl'] ?? 'https://vod-progressive.akamaized.net/exp=1699233400~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F1002%2F17%2F430014215%2F1867931037.mp4~hmac=1e345291806485405af45a6d5d4fad5667818429a56a8f190ea6679e21b07b7b/vimeo-prod-skyfire-std-us/01/1002/17/430014215/1867931037.mp4',
      likes: json['likes'] ?? 0,
      views: json['views'] ?? 0,
    );
  }

  VideoPost toVideoPostEntity() {
    return VideoPost(
      caption: name,
      videoUrl: videoUrl,
      likes: likes,
      views: views,
    );
  }
}
