import 'dart:ui';

import 'package:learn_flutter/04_picture_search/data/data_source/picture_api.dart';
import 'package:learn_flutter/04_picture_search/data/dto/picture_mapper.dart';
import 'package:learn_flutter/04_picture_search/domain/model/picture.dart';
import 'package:learn_flutter/04_picture_search/domain/repository/picture_repository.dart';

class PictureRepositoryImpl implements PictureRepository {
  final PictureApi _api;

  @override
  Future<List<ImagePicture>> getPictures(String query) async {
    final dto = await _api.getPictureResultDto(query);

    if (dto.hits == null) {
      return [];
    }

    final List<ImagePicture> result = dto.hits!.map((e) => e.toPicture()).toList();

    return result;
  }

  const PictureRepositoryImpl({
    required PictureApi api,
  }) : _api = api;
}