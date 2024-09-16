// lib/components/phrases_item.dart
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/phrase.dart';  // Updated import
import 'package:audioplayers/audioplayers.dart';

class PhrasesItem extends StatefulWidget {
  const PhrasesItem({super.key, required this.item});
  final Phrase item;  // Updated type

  @override
  _PhrasesItemState createState() => _PhrasesItemState();
}

class _PhrasesItemState extends State<PhrasesItem> {
  final AudioPlayer _player = AudioPlayer();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();

    _player.onPlayerComplete.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  void _playPauseAudio() async {
    if (isPlaying) {
      await _player.pause();
      setState(() {
        isPlaying = false;
      });
    } else {
      await _player.play(AssetSource(widget.item.sound));
      setState(() {
        isPlaying = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 146, 195, 235),
      height: 100.0,
      child: Row(
        children: [
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
              onPressed: _playPauseAudio,
              backgroundColor: const Color.fromARGB(255, 5, 44, 77),
              shape: const CircleBorder(),
              child: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
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
