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
        body: Text('이것은 리버트 테스트를 위한 작업')
    );
  }
}
