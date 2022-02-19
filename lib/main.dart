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
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Colors.red,
                    )),
                    onPressed: () {
                      //libraryをimportしたことによってAudioCacheを使ってローカルのサウンドファイルを作成することに成功した
                      playSound(1);
                    },
                    child: const Text('')),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Colors.orange,
                    )),
                    onPressed: () {
                      //libraryをimportしたことによってAudioCacheを使ってローカルのサウンドファイルを作成することに成功した
                      playSound(2);
                    },
                    child: const Text('')),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Colors.yellow,
                    )),
                    onPressed: () {
                      //libraryをimportしたことによってAudioCacheを使ってローカルのサウンドファイルを作成することに成功した
                      playSound(3);
                    },
                    child: const Text('')),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Colors.green,
                    )),
                    onPressed: () {
                      //libraryをimportしたことによってAudioCacheを使ってローカルのサウンドファイルを作成することに成功した
                      playSound(4);
                    },
                    child: const Text('')),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Colors.lightGreen,
                    )),
                    onPressed: () {
                      //libraryをimportしたことによってAudioCacheを使ってローカルのサウンドファイルを作成することに成功した
                      playSound(5);
                    },
                    child: const Text('')),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Colors.blue,
                    )),
                    onPressed: () {
                      //libraryをimportしたことによってAudioCacheを使ってローカルのサウンドファイルを作成することに成功した
                      playSound(6);
                    },
                    child: const Text('')),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.purple,
                      ),
                    ),
                    onPressed: () {
                      //libraryをimportしたことによってAudioCacheを使ってローカルのサウンドファイルを作成することに成功した
                      playSound(7);
                    },
                    child: const Text(
                      '',
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
