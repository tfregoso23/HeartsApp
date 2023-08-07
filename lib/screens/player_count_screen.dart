import 'package:flutter/material.dart';
import 'package:hearts_app/screens/player_name_screen.dart';

class PlayerCountScreen extends StatefulWidget {
  const PlayerCountScreen({super.key});

  @override
  State<PlayerCountScreen> createState() => _PlayerCountScreenState();
}

class _PlayerCountScreenState extends State<PlayerCountScreen> {
  //initialize player count as 2
  var playerCount = 2;

  void _incrementCount() {
    if (playerCount >= 2 && playerCount <= 7) {
      setState(
        () {
          playerCount += 1;
        },
      );
    } else {
      return;
    }
  }


  void _decreaseCount() {
    if (playerCount > 2) {
      setState(() {
        playerCount -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        title: const Text(
          'Hearts',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'How many players?',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: _decreaseCount,
                      icon: const Icon(Icons.remove, size: 40),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      '$playerCount',
                      style: const TextStyle(fontSize: 60),
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      onPressed: _incrementCount,
                      icon: const Icon(Icons.add, size: 40),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: const EdgeInsets.symmetric(horizontal: 40)),
                  onPressed: (){},
                  child: const Text('PLAY'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
