import 'package:equatable/equatable.dart';
import 'package:newyork_times/newyork_times/domin/entities/most_popular_entity/media_metadata_entity.dart';

class Media extends Equatable {
  Media({
    this.type,
    this.subtype,
    this.caption,
    this.copyright,
    this.approvedForSyndication,
    this.mediametadata,
  });

  String? type;
  String? subtype;
  String? caption;
  String? copyright;
  num? approvedForSyndication;
  List<MediaMetadata>? mediametadata;

  @override
  List<Object?> get props => [
        this.type,
        this.subtype,
        this.caption,
        this.copyright,
        this.approvedForSyndication,
        this.mediametadata,
      ];
}
