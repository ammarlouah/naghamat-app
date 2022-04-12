import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicWidget());
}

// ignore: use_key_in_widget_constructors
class MusicWidget extends StatelessWidget {
  //const MusicWidget({ Key? key }) : super(key: key);
  void playMusic(var M) {
    final player = AudioCache();
    player.play('music-$M.mp3');
  }

  Expanded styleMusic(var num, var text, coolor) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: RaisedButton(
          color: Colors.white,
          onPressed: () {
            playMusic(num);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: coolor,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: coolor,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          // ignore: prefer_const_constructors
          title: Text("Naghamat"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            styleMusic(1, 'Samsung Galaxy', Colors.red),
            styleMusic(2, 'Samsung Note', Colors.green),
            styleMusic(3, 'Nokia', Colors.black),
            styleMusic(4, 'iPhone 11', Colors.orange),
            styleMusic(5, 'Whatsapp', Colors.blue),
            styleMusic(6, 'Samsung S7', Colors.purple),
            styleMusic(7, 'iPhone 6', Colors.black),
          ],
        ),
      ),
    );
  }
}
