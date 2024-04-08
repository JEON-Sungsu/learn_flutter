import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter/01_happy_birthday/model/user_card_info.dart';
import 'package:learn_flutter/01_happy_birthday/pages/birthday_card.dart';
import 'package:learn_flutter/01_happy_birthday/pages/user_card.dart';

class HappyBirthdayListPage extends StatefulWidget {
  const HappyBirthdayListPage({super.key});

  @override
  State<HappyBirthdayListPage> createState() => _HappyBirthdayListPageState();
}

class _HappyBirthdayListPageState extends State<HappyBirthdayListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        title: const Text(
          'Happy birthday 과제',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          TextButton(
            onPressed: () {
              UserCardInfo userCardInfo = const UserCardInfo(
                  name: '부기',
                  shortDescription: '부산의 마스코트',
                  imageUrl: 'https://image.fnnews.com/resource/media/image/2021/07/13/202107131904412090_m.jpg',
                  email: 'boogi@busan.org',
                  phone: '010-3333-1234',
                  gitHub: 'www.github.com'
              );
              context.push('/happyBirthdayList/birthdayCard', extra: userCardInfo);
            },
            child: Container(
                alignment: Alignment.centerLeft,
                child: const Text('Happy birthday')),
          ),
          TextButton(
            onPressed: () {
              context.push('/happyBirthdayList/userCard');
            },
            child: Container(
                alignment: Alignment.centerLeft,
                child: const Text('User card')),
          )
        ],
      ),
    );
  }
}
