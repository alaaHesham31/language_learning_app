import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final dynamic item; // Can be either a Phrase, FamilyMember, Color, or Number

  const Item({super.key, required this.item});

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  final AudioPlayer _player = AudioPlayer();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();

    // Listen to the state of the player to handle the end of the audio
    _player.onPlayerComplete.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    _player.dispose(); // Always dispose of the player when not needed
    super.dispose();
  }

  void _playPauseAudio() async {
    if (isPlaying) {
      await _player.pause(); // Pause if currently playing
      setState(() {
        isPlaying = false;
      });
    } else {
      await _player.play(AssetSource(widget.item.sound)); // Play if currently paused
      setState(() {
        isPlaying = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: const Color.fromARGB(255, 146, 195, 235),
      child: Row(
        children: [
            Container(
              color: const Color(0xFFFEFAF6),
              child: Image.asset(widget.item.image), 
            ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.item.jPName,
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  widget.item.enName,
                  style: const TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: FloatingActionButton(
              onPressed: _playPauseAudio, // Toggle play/pause
              backgroundColor: const Color.fromARGB(255, 5, 44, 77),
              shape: const CircleBorder(),
              child: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow, // Change the icon
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



