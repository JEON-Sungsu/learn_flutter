import 'package:flutter/cupertino.dart';
import 'package:learn_flutter/04_picture_search/data/model/picture.dart';
import 'package:learn_flutter/04_picture_search/data/repository/picture_repository.dart';

class PictureViewModel extends ChangeNotifier {
  final PictureRepository _repository;
  List<ImagePicture> _pictures = [];
  bool _isLoading = false;

  List<ImagePicture> get pictures => List.unmodifiable(_pictures);
  bool get isLoading => _isLoading;

  void startSearch(String query) async {
    _isLoading = true;
    notifyListeners();
    _pictures = await _repository.getPictures(query);
    _isLoading = false;
    notifyListeners();
  }

  PictureViewModel({
    required PictureRepository repository,
  }) : _repository = repository;

}