import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XyloPhone());
}

class XyloPhone extends StatelessWidget {
  void Soundplayer(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  Expanded BuildKey(Color color, int SoundNumber) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          Soundplayer(SoundNumber);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(Colors.red, 1),
              BuildKey(Colors.yellow, 2),
              BuildKey(Colors.green, 3),
              BuildKey(Colors.blue, 4),
              BuildKey(Colors.brown, 5),
              BuildKey(Colors.pink, 6),
              BuildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
