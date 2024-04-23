import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UiList extends StatefulWidget {
  const UiList({super.key});

  @override
  State<UiList> createState() => _UiListState();
}

class _UiListState extends State<UiList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UI 연습장'),
        ),
        body: Column(
          children: [
            TextButton(
              onPressed: () {
                context.push('/uiList/radioButton');
              },
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('- 라디오 버튼')),
            )
          ],
        ));
  }
}
