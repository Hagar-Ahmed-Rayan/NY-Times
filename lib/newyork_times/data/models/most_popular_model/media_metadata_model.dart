import 'package:newyork_times/newyork_times/domin/entities/most_popular_entity/media_metadata_entity.dart';

class MediaMetadataModel extends MediaMetadata {
  MediaMetadataModel({
    super.url,
    super.format,
    super.height,
    super.width,
  });

  factory MediaMetadataModel.fromJson(Map<String, dynamic> json) =>
      MediaMetadataModel(
        url: json['url'],
        format: json['format'],
        height: json['height'],
        width: json['width'],
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['format'] = format;
    map['height'] = height;
    map['width'] = width;
    return map;
  }
}
