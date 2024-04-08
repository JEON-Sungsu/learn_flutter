import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_flutter/02_youtuebe_clone/presentation/tabs/shorts.dart';
import 'package:learn_flutter/02_youtuebe_clone/presentation/tabs/subscribe.dart';
import 'package:learn_flutter/02_youtuebe_clone/presentation/tabs/upload.dart';
import 'package:learn_flutter/02_youtuebe_clone/presentation/tabs/user_select_box.dart';
import 'package:learn_flutter/02_youtuebe_clone/presentation/tabs/youtube_home.dart';

class YoutubeMain extends StatefulWidget {
  const YoutubeMain({super.key});

  @override
  State<YoutubeMain> createState() => _YoutubeMainState();
}

class _YoutubeMainState extends State<YoutubeMain> {
  int currentTabIndex = 0;
  final tabList = [
    const YoutubeHome(),
    const Shorts(),
    const Upload(),
    const Subscribe(),
    const UserSelectBox()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 6),
              child: Image.asset(
                'assets/image/youtube_logo.png',
                width: 100,
                fit: BoxFit.cover
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/image/display_solid.svg',
              semanticsLabel: 'Screen share',
              width: 20,
              height: 20,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/image/icon_alarm.svg',
              semanticsLabel: 'Screen share',
              width: 20,
              height: 20,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/image/icon_search.svg',
              semanticsLabel: 'Screen share',
              width: 20,
              height: 20,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(
                  'https://image.fnnews.com/resource/media/image/2021/07/13/202107131904412090_m.jpg'),
            ),
            onPressed: () {},
          ),
        ],
        centerTitle: false,
      ),
      body: SingleChildScrollView(child: tabList[currentTabIndex]),
      bottomNavigationBar: Container(
        height: 100,
        decoration: const BoxDecoration(
            color: Colors.black,
            border: Border(top: BorderSide(width: 1, color: Colors.white10))),
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentTabIndex,
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          unselectedLabelStyle: const TextStyle(color: Colors.white10, fontSize: 12),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '홈',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.slow_motion_video),
              label: 'Shorts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline, size: 40, weight: 400,),
              label: '',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Badge(
                backgroundColor: Colors.red,
                child: Icon(Icons.subscriptions_outlined),
              ),
              label: '구독',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined),
              label: '보관함',
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}