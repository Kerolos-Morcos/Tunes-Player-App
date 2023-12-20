import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tunes_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tunes});
  final TunesModel tunes;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tunes.playSound();
        },
        child: Container(
          color: tunes.color,
        ),
      ),
    );
  }
}