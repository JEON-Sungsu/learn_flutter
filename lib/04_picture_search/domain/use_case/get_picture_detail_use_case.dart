import 'package:learn_flutter/04_picture_search/domain/model/picture.dart';

class GetPictureDetailUseCase {
  ImagePicture getPictureDetailInfo(
      List<ImagePicture> pictures, num id) {
    final detail = pictures.where((picture) => picture.id == id).toList();
    return detail[0];
  }
}
