import 'package:equatable/equatable.dart';



class MostPopular extends Equatable {

 final String? status;
  final String? copyright;
 final  num? numResults;
  final List<Results>? results;

  MostPopular({
    this.status,
    this.copyright,
    this.numResults,
    this.results,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [

    status,
    copyright,
    numResults,
    results,


  ];


}
class Media extends Equatable {
  Media({
    this.type,
    this.subtype,
    this.caption,
    this.copyright,
    this.approvedForSyndication,
    this.mediametadata,});

  String? type;
  String? subtype;
  String? caption;
  String? copyright;
  num? approvedForSyndication;
  List<MediaMetadata>? mediametadata;

  @override
  // TODO: implement props
  List<Object?> get props => [
  this.type,
  this.subtype,
  this.caption,
  this.copyright,
  this.approvedForSyndication,
  this.mediametadata,
  ];


}
class MediaMetadata  extends Equatable {
  MediaMetadata({
    this.url,
    this.format,
    this.height,
    this.width,});

  String? url;
  String? format;
  num? height;
  num? width;

  @override
  // TODO: implement props
  List<Object?> get props => [
    url,
    format,
    height,
    width,
  ];


}
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
    this.etaId,});

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
