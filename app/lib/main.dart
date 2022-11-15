import 'package:app/home_page.dart';
import 'package:app/music_info.dart';
import 'package:app/sub_scribe_info.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/music_info': (context) => const MusicInfo(),
        '/sub_sucribe_info': (context) => const SubScribeInfo(),
      },
    );
  }
}
