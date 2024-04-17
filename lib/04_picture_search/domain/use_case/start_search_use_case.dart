import 'package:learn_flutter/04_picture_search/domain/model/picture.dart';
import 'package:learn_flutter/04_picture_search/domain/repository/picture_repository.dart';

class StartSearchUseCase {
  final PictureRepository _repository;

  const StartSearchUseCase({
    required PictureRepository repository,
  }) : _repository = repository;

  Future<List<ImagePicture>> startSearch(String query) async {
    return await _repository.getPictures(query);
  }
}