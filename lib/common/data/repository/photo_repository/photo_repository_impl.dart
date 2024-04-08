import 'package:learn_flutter/common/data/data_source/photo_api.dart';
import 'package:learn_flutter/common/data/dto/photo_dto.dart';
import 'package:learn_flutter/common/data/dto/photo_mapper.dart';
import 'package:learn_flutter/common/data/model/photo.dart';
import 'package:learn_flutter/common/data/repository/photo_repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _api;

  @override
  Future<List<Photo>> getPhotoList() async {
    final photoDtoList = await _api.getPhotoList();

    return photoDtoList.map((e) => e.toPhoto()).toList();
  }

  const PhotoRepositoryImpl({
    required PhotoApi api,
  }) : _api = api;
}