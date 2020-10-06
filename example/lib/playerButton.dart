import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlayerButton extends StatefulWidget {
  PlayerButtonState createState() => PlayerButtonState();
}

class PlayerButtonState extends State<PlayerButton> {
  AudioPlayer player;
  @override
  void initState() {
    player = AudioPlayer(playerId: "3485");
    player.onAmplitudeUpdate.listen((event) {
      print("Amplitude update - $event");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("Play"),
          color: Colors.blue,
          onPressed: () async {
            await player.play(
                "https://s3.amazonaws.com/labstertts/speech/gtts/en-in/female/en-in-wavenet-a/425e2aacab079fbc4dfb28d9f5fa414d.mp3");
          },
        ),
      ),
    );
  }
}
