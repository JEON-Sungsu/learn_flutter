import 'dart:ui';

import 'package:learn_flutter/04_picture_search/data/model/picture.dart';

abstract interface class PictureRepository {
  Future<List<ImagePicture>> getPictures(String query);
}