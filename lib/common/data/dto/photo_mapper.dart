import 'package:learn_flutter/common/data/dto/photo_dto.dart';
import 'package:learn_flutter/common/data/model/photo.dart';

extension PhotoMapper on PhotoDto {
  Photo toPhoto() {
    return Photo(albumId: albumId ?? 1,
      id: id ?? 1,
      title: title ?? '제목없음',
      url: url ?? 'https://via.placeholder.com/600/92c952',
      thumbnailUrl: thumbnailUrl ?? "https://via.placeholder.com/600/92c952",
    );
  }
}