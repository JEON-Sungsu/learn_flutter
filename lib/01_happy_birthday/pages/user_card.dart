import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/01_happy_birthday/model/user_card_info.dart';

class UserCard extends StatefulWidget {
  UserCardInfo userCardInfo;

  UserCard({required this.userCardInfo, super.key});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: -1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          border: Border.all(
                            width: 1,
                          )),
                      child: CircleAvatar(
                        radius: 48,
                        backgroundImage:
                            NetworkImage(widget.userCardInfo.imageUrl),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.userCardInfo.name,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        Text(widget.userCardInfo.shortDescription),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
              child: Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(Icons.phone_android, size: 14,),
                      Text(
                        widget.userCardInfo.phone,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.email, size: 12,),
                      Text(
                        widget.userCardInfo.email,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.web, size: 14,),
                      Text(
                        widget.userCardInfo.gitHub,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
