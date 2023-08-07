import 'package:flutter/material.dart';
import 'package:hearts_app/screens/player_count_screen.dart';
import 'package:hearts_app/screens/player_name_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 67, 40, 240),
          )),
      home: const PlayerNameScreen(),
    );
  }
}
