import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void playSound(int soundNum){
    Audio.load('assets/note$soundNum.wav')..play()..dispose();
  }
  Expanded buildKey({required Color color, required int soundNum}){
    return Expanded(
      child: TextButton(
        onPressed:(){
          playSound(soundNum);
        },
        child:Text(
          'click',
          style: TextStyle(
            fontSize: 800,
            color: color,
            backgroundColor: color,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('XYLOPHONE')),
          backgroundColor: Colors.blueGrey,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNum: 1),
              buildKey(color: Colors.blue, soundNum: 2),
              buildKey(color: Colors.pinkAccent, soundNum: 3),
              buildKey(color: Colors.yellow, soundNum: 4),
              buildKey(color: Colors.green, soundNum: 5),
              buildKey(color: Colors.brown, soundNum: 6),
            ],
          ),
        ),
      ),
    );
  }
}