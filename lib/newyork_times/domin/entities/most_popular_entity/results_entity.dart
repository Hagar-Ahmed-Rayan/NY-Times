import 'package:equatable/equatable.dart';
import 'package:newyork_times/newyork_times/domin/entities/most_popular_entity/media_entity.dart';

class Results extends Equatable {
  Results({
    this.uri,
    this.url,
    this.id,
    this.assetId,
    this.source,
    this.publishedDate,
    this.updated,
    this.section,
    this.subsection,
    this.nytdsection,
    this.adxKeywords,
    this.column,
    this.byline,
    this.type,
    this.title,
    this.abstract,
    this.desFacet,
    this.orgFacet,
    this.perFacet,
    this.geoFacet,
    this.media,
    this.etaId,
  });

  String? uri;
  String? url;
  num? id;
  num? assetId;
  String? source;
  String? publishedDate;
  String? updated;
  String? section;
  String? subsection;
  String? nytdsection;
  String? adxKeywords;
  dynamic column;
  String? byline;
  String? type;
  String? title;
  String? abstract;
  List<String>? desFacet;
  List<String>? orgFacet;
  List<String>? perFacet;
  List<dynamic>? geoFacet;
  List<Media>? media;
  num? etaId;

  @override
  // TODO: implement props
  List<Object?> get props => [
        uri,
        url,
        id,
        assetId,
        source,
        publishedDate,
        updated,
        section,
        subsection,
        nytdsection,
        adxKeywords,
        column,
        byline,
        type,
        title,
        abstract,
        desFacet,
        orgFacet,
        perFacet,
        geoFacet,
        media,
        etaId
      ];
}
