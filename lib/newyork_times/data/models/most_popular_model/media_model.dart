import 'package:newyork_times/newyork_times/data/models/most_popular_model/media_metadata_model.dart';
import 'package:newyork_times/newyork_times/domin/entities/most_popular_entity/media_entity.dart';

class MediaModel extends Media {
  MediaModel({
    super.type,
    super.subtype,
    super.caption,
    super.copyright,
    super.approvedForSyndication,
    super.mediametadata,
  });

  factory MediaModel.fromJson(Map<String, dynamic> json) => MediaModel(
        type: json['type'],
        subtype: json['subtype'],
        caption: json['caption'],
        copyright: json['copyright'],
        approvedForSyndication: json['approved_for_syndication'],
        mediametadata: List<MediaMetadataModel>.from(
            json['media-metadata'].map((x) => MediaMetadataModel.fromJson(x))),
      );
}
