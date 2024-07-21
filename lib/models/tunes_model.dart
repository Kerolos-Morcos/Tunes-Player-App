import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TunesModel {
  final Color color;
  final String sound;

  const TunesModel({required this.color, required this.sound});

  void playSound() async {
    final player = AudioPlayer();
    try {
      await player.play(AssetSource(sound));
    } catch (e) {
      log('Error playing sound: $e');
    }
  }
}
