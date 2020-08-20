import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({Color color,int number}){
  return  Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
          return buildKey;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
              crossAxisAlignment:CrossAxisAlignment.stretch,
              children: <Widget>[

                buildKey(color:Colors.red,number:1),
                buildKey(color:Colors.orange,number:2),
                buildKey(color:Colors.yellowAccent,number:3),
                buildKey(color:Colors.blue,number:4),
                buildKey(color:Colors.purple,number:5),
                buildKey(color:Colors.pink,number:6),
                buildKey(color:Colors.lightGreen,number:7),

              ]),
        ),
      ),
    );
  }
}
