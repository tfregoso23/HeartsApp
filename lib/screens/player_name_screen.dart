import 'package:flutter/material.dart';
import 'package:hearts_app/widgets/player_name_card.dart';

class PlayerNameScreen extends StatefulWidget {
  const PlayerNameScreen({super.key});

  @override
  State<PlayerNameScreen> createState() => _PlayerNameState();
}

class _PlayerNameState extends State<PlayerNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: ListView.builder(
        itemBuilder: (ctx, index) => PlayerNameCard(),
        itemCount: 3,
      ),
    );
  }
}
