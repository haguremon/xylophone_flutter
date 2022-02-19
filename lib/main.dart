// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

// ignore: use_key_in_widget_constructors
class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildkey({Color? color, int soundNumber = 0}) {
    return Expanded(
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
            color,
          )),
          onPressed: () {
            //libraryをimportしたことによってAudioCacheを使ってローカルのサウンドファイルを作成することに成功した
            playSound(soundNumber);
          },
          child: const Text('')),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, soundNumber: 1),
              buildkey(color: Colors.orange, soundNumber: 2),
              buildkey(color: Colors.yellow, soundNumber: 3),
              buildkey(color: Colors.green, soundNumber: 4),
              buildkey(color: Colors.lightGreen, soundNumber: 5),
              buildkey(color: Colors.blue, soundNumber: 6),
              buildkey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
