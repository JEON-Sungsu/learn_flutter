import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter/core/di/di_setup.dart';
import 'package:learn_flutter/router/router.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  diSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter 학습',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            TextButton(
              onPressed: () {
                context.push(
                    Uri(path: '/uiList').toString()
                );
              },
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('00. UI Practice')), //03
            ),
            TextButton(
              onPressed: () {
                context.push(
                  Uri(
                    path: '/happyBirthdayList',
                  ).toString()
                );
              },
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('01. Happy birth day')),
            ), //01
            TextButton(
              onPressed: () {
                context.push(
                  Uri(path: '/youtubeClone').toString()
                );
              },
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('02. youtube clone')),
            ), //02
            TextButton(
              onPressed: () {
                context.push(
                  Uri(path: '/starbucksClone').toString()
                );
              },
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('03. Startbucks clone')), //03
            ),
            TextButton(
              onPressed: () {
                context.push(
                    Uri(path: '/pictureSearch').toString()
                );
              },
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('04. Picture Search')), //03
            ),
            TextButton(
              onPressed: () {
                context.push(
                    Uri(path: '/stream').toString()
                );
              },
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('05. Stream')), //03
            )
          ],
        ),
      ),
    );
  }
}
