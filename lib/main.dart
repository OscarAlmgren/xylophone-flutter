import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int index) {
    final player = AudioCache();
    player.play('note$index.wav');
  }

  Expanded buildKeynote(Color inputColor, int keyIndex) => Expanded(
        flex: 1,
        child: FlatButton(
          color: inputColor,
          onPressed: () => playSound(keyIndex),
          child: null,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKeynote(Colors.red, 1),
              buildKeynote(Colors.orange, 2),
              buildKeynote(Colors.yellow, 3),
              buildKeynote(Colors.green, 4),
              buildKeynote(Colors.teal, 5),
              buildKeynote(Colors.blue, 6),
              buildKeynote(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
