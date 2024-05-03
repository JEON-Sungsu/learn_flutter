import 'package:flutter/material.dart';

class StreamMainScreen extends StatefulWidget {
  const StreamMainScreen({super.key});

  @override
  State<StreamMainScreen> createState() => _StreamMainScreenState();
}

class _StreamMainScreenState extends State<StreamMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Text('다시한번 Revert test'),
            Text('2차 머지 진행')
          ],
        )
    );
  }
}
