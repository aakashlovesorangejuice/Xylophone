import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(Xylophone());
void noteNumber(int a){
  final player=AudioCache();
  player.play('note$a.wav');
}
Expanded makeKey(int a,Color b)
{
  return Expanded(
    child: FlatButton(
      color: b,
      onPressed: (){
        noteNumber(a);
      },
    ),
  );
}
class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              makeKey(1,Colors.red),
              makeKey(2,Colors.orange),
              makeKey(3,Colors.blue),
              makeKey(4,Colors.teal),
              makeKey(5,Colors.purple),
              makeKey(6,Colors.green),
              makeKey(7,Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
