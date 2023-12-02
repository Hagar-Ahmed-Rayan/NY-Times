
/*class MostPopularModel {
  MostPopularModel({
      this.status,
      this.copyright,
      this.numResults,
      this.results,});

  MostPopularModel.fromJson(dynamic json) {
    status = json['status'];
    copyright = json['copyright'];
    numResults = json['num_results'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
  }
  String? status;
  String? copyright;
  num? numResults;
  List<Results>? results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['copyright'] = copyright;
    map['num_results'] = numResults;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}*/
import '../../../domin/entities/most_popular_entity.dart';

class MostPopularModel extends MostPopular {

  MostPopularModel({

    super.status,
    super.copyright,
    super.numResults,
    super.results

  } );


  factory MostPopularModel.fromJson(Map<String, dynamic> json) =>
      MostPopularModel(
        status: json['status'],
        copyright: json['copyright'],
        numResults: json['num_results'],
          results: List<ResultsModel>.from(
            json["results"].map((x) => ResultsModel.fromJson(x))),
      );


}

class MediaModel extends Media {
  MediaModel({
    super.type,
    super.subtype,
    super.caption,
    super.copyright,
    super.approvedForSyndication,
    super.mediametadata,});
  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      MediaModel(
          type : json['type'],
          subtype : json['subtype'],
          caption : json['caption'],
      copyright : json['copyright'],
          approvedForSyndication : json['approved_for_syndication'],
          mediametadata: List<MediaMetadataModel>.from(
              json['media-metadata'].map((x) => MediaMetadataModel.fromJson(x))),

      );



}
class MediaMetadataModel extends MediaMetadata{

  MediaMetadataModel({
    super.url,
    super.format,
    super.height,
    super.width,});
  factory MediaMetadataModel.fromJson(Map<String, dynamic> json) =>
      MediaMetadataModel(
        url: json['url'] ,
        format:json['format'],
        height:json['height'] ,
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
class ResultsModel extends Results {
  ResultsModel({

    super.url,
    super.id,
    super.source,
    super.publishedDate,
    super.updated,
    super.section,
    super.byline,
    super.type,
    super.title,
    super.abstract,
    super.media,
    });
  factory ResultsModel.fromJson(Map<String, dynamic> json) =>
      ResultsModel(
          url : json['url'],
          id :json['id'],
          source :json['source'],
      publishedDate : json['published_date'],
      section : json['section'],
      byline : json['byline'],
      type : json['type'],
      title : json['title'],
      abstract : json['abstract'],

          media: List<MediaModel>.from(
      json['media'].map((x) => MediaModel.fromJson(x))),

      );



}