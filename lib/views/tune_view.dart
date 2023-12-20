import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tunes_model.dart';
import 'package:tunes_player_app/widgets/tune_item.dart';

class TunesView extends StatelessWidget {
  const TunesView({
    super.key,
  });
  final List<TunesModel> tunes = const [
    TunesModel(color: Color(0xffF44336), sound: 'sounds/note1.wav'),
    TunesModel(color: Color(0xffF89800), sound: 'sounds/note2.wav'),
    TunesModel(color: Color(0xffFEEB3B), sound: 'sounds/note3.wav'),
    TunesModel(color: Color(0xff4CAF50), sound: 'sounds/note4.wav'),
    TunesModel(color: Color(0xff2F9688), sound: 'sounds/note5.wav'),
    TunesModel(color: Color(0xff2896F3), sound: 'sounds/note6.wav'),
    TunesModel(color: Color(0xff9C27B0), sound: 'sounds/note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Tune'),
          backgroundColor: const Color(0xff243139),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: 
          tunes.map((e) => TuneItem(tunes: e)).toList(),
        ));
  }
}
