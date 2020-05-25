import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int index) {
    final player = AudioCache();
    player.play('note$index.wav');
  }

  Expanded buildKeynote({@required Color inputColor, @required int keyIndex}) =>
      Expanded(
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
              buildKeynote(inputColor: Colors.red, keyIndex: 1),
              buildKeynote(inputColor: Colors.orange, keyIndex: 2),
              buildKeynote(inputColor: Colors.yellow, keyIndex: 3),
              buildKeynote(inputColor: Colors.green, keyIndex: 4),
              buildKeynote(inputColor: Colors.teal, keyIndex: 5),
              buildKeynote(inputColor: Colors.blue, keyIndex: 6),
              buildKeynote(inputColor: Colors.purple, keyIndex: 7),
            ],
          ),
        ),
      ),
    );
  }
}
