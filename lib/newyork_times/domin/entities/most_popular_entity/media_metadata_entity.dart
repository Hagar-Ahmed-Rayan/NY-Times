import 'package:equatable/equatable.dart';

class MediaMetadata extends Equatable {
  MediaMetadata({
    this.url,
    this.format,
    this.height,
    this.width,
  });

  String? url;
  String? format;
  num? height;
  num? width;

  @override
  List<Object?> get props => [
        url,
        format,
        height,
        width,
      ];
}
