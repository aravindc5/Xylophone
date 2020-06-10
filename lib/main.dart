import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildUI({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildUI(color: Colors.red, soundNumber: 1),
              buildUI(color: Colors.orange, soundNumber: 2),
              buildUI(color: Colors.yellow, soundNumber: 3),
              buildUI(color: Colors.green, soundNumber: 4),
              buildUI(color: Colors.teal, soundNumber: 5),
              buildUI(color: Colors.blue, soundNumber: 6),
              buildUI(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
