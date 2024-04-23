import 'package:get_it/get_it.dart';
import 'package:learn_flutter/04_picture_search/data/data_source/picture_api.dart';
import 'package:learn_flutter/04_picture_search/data/repository/picture_repository_impl.dart';
import 'package:learn_flutter/04_picture_search/domain/repository/picture_repository.dart';
import 'package:learn_flutter/04_picture_search/domain/use_case/get_picture_detail_use_case.dart';
import 'package:learn_flutter/04_picture_search/domain/use_case/start_search_use_case.dart';
import 'package:learn_flutter/04_picture_search/presentation/view_model/picture_view_model.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<PictureApi>(PictureApi());
  getIt.registerSingleton<PictureRepository>(
      PictureRepositoryImpl(api: getIt()));
  getIt.registerSingleton<StartSearchUseCase>(
      StartSearchUseCase(repository: getIt()));
  getIt.registerSingleton<GetPictureDetailUseCase>(GetPictureDetailUseCase());
  getIt.registerFactory<PictureViewModel>(() => PictureViewModel(
      startSearchUseCase: getIt(), getPictureDetailUseCase: getIt()));
}
