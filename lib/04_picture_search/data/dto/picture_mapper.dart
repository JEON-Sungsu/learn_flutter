import 'package:learn_flutter/04_picture_search/data/model/picture.dart';

import 'picture_result_dto.dart';

extension PictureMapper on Hits {
  ImagePicture toPicture() {
    return ImagePicture(
      id: id ?? 0,
      tags: tags ?? 'fail to get tags',
      url: previewURL ?? 'https://www.shutterstock.com/image-vector/default-ui-image-placeholder-wireframes-600nw-1037719192.jpg',
    );
  }
}
