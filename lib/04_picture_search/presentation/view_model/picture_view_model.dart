import 'package:flutter/cupertino.dart';
import 'package:learn_flutter/04_picture_search/domain/model/picture.dart';
import 'package:learn_flutter/04_picture_search/domain/use_case/get_picture_detail_use_case.dart';
import 'package:learn_flutter/04_picture_search/domain/use_case/start_search_use_case.dart';

class PictureViewModel extends ChangeNotifier {
  final StartSearchUseCase _startSearchUseCase;
  final GetPictureDetailUseCase _getPictureDetailUseCase;
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
    _pictures = await _startSearchUseCase.startSearch(query);

    if (_pictures.isEmpty) {
      _isEmpty = true;
    }
    _isLoading = false;

    notifyListeners();
  }

  ImagePicture getPictureInfo(num id) {
    return _getPictureDetailUseCase.getPictureDetailInfo(_pictures, id);
  }

  PictureViewModel(
      {required StartSearchUseCase startSearchUseCase,
      required GetPictureDetailUseCase getPictureDetailUseCase})
      : _startSearchUseCase = startSearchUseCase,
        _getPictureDetailUseCase = getPictureDetailUseCase;
}
