import 'package:learn_flutter/04_picture_search/domain/model/picture.dart';

abstract interface class PictureRepository {
  Future<List<ImagePicture>> getPictures(String query);
}