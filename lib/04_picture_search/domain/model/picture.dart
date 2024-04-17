import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture.freezed.dart';

part 'picture.g.dart';

@freezed
class ImagePicture with _$ImagePicture {
  const factory ImagePicture({
    required num id,
    required String tags,
    required String url,

  }) = _ImagePicture;

  factory ImagePicture.fromJson(Map<String, Object?> json) => _$ImagePictureFromJson(json);
}