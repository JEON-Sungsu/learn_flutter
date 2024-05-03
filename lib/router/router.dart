import 'package:go_router/go_router.dart';
import 'package:learn_flutter/00_UI_practice/ui_components/radio_button.dart';
import 'package:learn_flutter/00_UI_practice/ui_list.dart';
import 'package:learn_flutter/01_happy_birthday/happy_birthday_list.dart';
import 'package:learn_flutter/01_happy_birthday/model/user_card_info.dart';
import 'package:learn_flutter/01_happy_birthday/pages/birthday_card.dart';
import 'package:learn_flutter/01_happy_birthday/pages/user_card.dart';
import 'package:learn_flutter/02_youtuebe_clone/presentation/youtube_main.dart';
import 'package:learn_flutter/03_starbucks_clone/presentation/starbucks_main_screen.dart';
import 'package:learn_flutter/04_picture_search/data/data_source/picture_api.dart';
import 'package:learn_flutter/04_picture_search/data/repository/picture_repository_impl.dart';
import 'package:learn_flutter/04_picture_search/domain/model/picture.dart';
import 'package:learn_flutter/04_picture_search/domain/use_case/get_picture_detail_use_case.dart';
import 'package:learn_flutter/04_picture_search/domain/use_case/start_search_use_case.dart';
import 'package:learn_flutter/04_picture_search/presentation/screen/picture_detail_screen.dart';
import 'package:learn_flutter/04_picture_search/presentation/screen/picture_list_screen.dart';
import 'package:learn_flutter/04_picture_search/presentation/view_model/picture_view_model.dart';
import 'package:learn_flutter/05_stream_practice/presentation/stream_main_screen.dart';
import 'package:learn_flutter/core/di/di_setup.dart';
import 'package:learn_flutter/main.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
      path: '/main',
      builder: (context, state) {
        return const MyHomePage(title: '과제 리스트');
      },
    ),

    //00_UI_Pracice
    GoRoute(
      path: '/uiList',
      builder: (context, state) {
        return const UiList();
      },
    ),

    GoRoute(
      path: '/uiList/radioButton',
      builder: (context, state) {
        return const RadioButton();
      },
    ),

    //01_happy_birthday
    GoRoute(
      path: '/happyBirthdayList',
      builder: (context, state) {
        return const HappyBirthdayListPage();
      },
    ),

    GoRoute(
      path: '/happyBirthdayList/birthdayCard',
      builder: (context, state) {
        return const BirthdayCard();
      },
    ),
    GoRoute(
      path: '/happyBirthdayList/userCard',
      builder: (context, state) {
        final userCardInfo = state.extra as UserCardInfo;
        return UserCard(userCardInfo: userCardInfo);
      },
    ),
    //02_youtube_clone
    GoRoute(
      path: '/youtubeClone',
      builder: (context, state) {
        return const YoutubeMain();
      },
    ),

    //03_Starbucsk_clone
    GoRoute(
      path: '/starbucksClone',
      builder: (context, state) {
        return const StarbucksMainScreen();
      },
    ),

    //04_PictureSearch
    GoRoute(
      path: '/pictureSearch',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => getIt<PictureViewModel>(),
          child: const PictureListScreen(),
        );
      },
    ),

    GoRoute(
      path: '/pictureSearch/pictureDetail',
      builder: (context, state) {
        final picture = state.extra as ImagePicture;
        return PictureDetailScreen(picture: picture);
      },
    ),

    //05_Stream
    GoRoute(
      path: '/stream',
      builder: (context, state) {
        return const StreamMainScreen();
      },
    ),
  ],
);
