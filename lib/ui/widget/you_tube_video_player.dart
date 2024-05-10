import 'package:flutter/material.dart';
import 'package:pod_player/pod_player.dart';

class YouTubeVideoPlayer extends StatefulWidget {
  const YouTubeVideoPlayer({
    super.key,
    required this.url,
  });

  final String url;

  @override
  State<YouTubeVideoPlayer> createState() => _YouTubeVideoPlayerState();
}

class _YouTubeVideoPlayerState extends State<YouTubeVideoPlayer> {
  late final PodPlayerController _controller;

  @override
  void initState() {
    _controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(widget.url),
      podPlayerConfig: const PodPlayerConfig(
        autoPlay: false,
      ),
    )..initialise();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => PodVideoPlayer(controller: _controller);
}
