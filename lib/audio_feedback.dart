import 'dart:async';

import 'package:audioplayers/audioplayers.dart';

class AudioFeedback {
  AudioFeedback._();

  static final AudioPlayer _player = AudioPlayer();

  static void playClick() {
    unawaited(_playClick());
  }

  static Future<void> _playClick() async {
    try {
      await _player.play(AssetSource('audio/som.mp3'));
    } catch (_) {}
  }
}
