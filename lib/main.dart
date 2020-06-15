import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(SoundApp());
}

class SoundApp extends StatelessWidget {
  final player = AudioCache();
  void playsound(String file) {
    player.play(file);
  }

  FlatButton _flatButton(Color _color, String animal, String _filename) {
    return FlatButton(
      onPressed: () {
        playsound(_filename);
      },
      child: Container(
        padding: const EdgeInsets.all(0),
        child: Text(animal, style: TextStyle(fontSize: 25.0)),
      ),
      color: _color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Sound Board App"),
            ),
            body: GridView.count(
              crossAxisCount: 2,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: <Widget>[
                _flatButton(Colors.teal[100], "Tiger", "tiger.wav"),
                _flatButton(Colors.teal[200], "Cock", "cock.mp3"),
                _flatButton(Colors.teal[300], "Goat", "goat.mp3"),
                _flatButton(Colors.teal[400], "Sheep", "sheep.mp3"),
                _flatButton(Colors.teal[500], "Cow", "cow.mp3"),
                _flatButton(Colors.teal[600], "Horse", "horse.mp3"),
              ],
            )));
  }
}
