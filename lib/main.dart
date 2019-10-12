import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int keyNumber, Color color}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(keyNumber);
        },
        child: Text(''),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildKey(keyNumber: 1, color: Colors.red),
              buildKey(keyNumber: 2, color: Colors.orange),
              buildKey(keyNumber: 3, color: Colors.yellow),
              buildKey(keyNumber: 4, color: Colors.green),
              buildKey(keyNumber: 5, color: Colors.teal),
              buildKey(keyNumber: 6, color: Colors.blue),
              buildKey(keyNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
