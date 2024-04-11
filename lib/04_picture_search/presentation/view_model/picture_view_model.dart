import 'package:flutter/cupertino.dart';
import 'package:learn_flutter/04_picture_search/data/model/picture.dart';
import 'package:learn_flutter/04_picture_search/data/repository/picture_repository.dart';

class PictureViewModel extends ChangeNotifier {
  final PictureRepository _repository;
  List<ImagePicture> _pictures = [];
  bool _isLoading = false;
  bool _isEmpty = false;

  List<ImagePicture> get pictures => List.unmodifiable(_pictures);
  bool get isLoading => _isLoading;
  bool get isEmpty => _isEmpty;

  void startSearch(String query) async {
    _isLoading = true;
    _isEmpty = false;
    notifyListeners();
    _pictures = await _repository.getPictures(query);

    if (_pictures.isEmpty) {
      _isEmpty = true;
    }
    _isLoading = false;

    notifyListeners();
  }

  PictureViewModel({
    required PictureRepository repository,
  }) : _repository = repository;

}