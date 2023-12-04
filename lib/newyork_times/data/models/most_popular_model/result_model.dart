import 'package:newyork_times/newyork_times/data/models/most_popular_model/media_model.dart';
import 'package:newyork_times/newyork_times/domin/entities/most_popular_entity/results_entity.dart';

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

  factory ResultsModel.fromJson(Map<String, dynamic> json) => ResultsModel(
        url: json['url'],
        id: json['id'],
        source: json['source'],
        publishedDate: json['published_date'],
        section: json['section'],
        byline: json['byline'],
        type: json['type'],
        title: json['title'],
        abstract: json['abstract'],
        media: List<MediaModel>.from(
            json['media'].map((x) => MediaModel.fromJson(x))),
      );
}
