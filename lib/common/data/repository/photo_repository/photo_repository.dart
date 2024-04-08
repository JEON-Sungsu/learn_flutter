import 'package:learn_flutter/common/data/model/photo.dart';

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotoList();
}