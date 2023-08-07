import 'package:flutter/material.dart';

class PlayerNameCard extends StatelessWidget {
  const PlayerNameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        //margin: EdgeInsets.fromLTRB(15, 10, 16, 10),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: const [
            Text(
              'Player 1',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            TextField(
              maxLength: 10,
              //controller: ,
              decoration: InputDecoration(labelText: 'Enter Name'),
            )
          ]),
        ),
      ),
    );
  }
}
