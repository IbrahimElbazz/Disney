import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appinio_video_player/appinio_video_player.dart';

class PlayVidScreen extends StatefulWidget {
  const PlayVidScreen({super.key});

  @override
  State<PlayVidScreen> createState() => _PlayVidScreenState();
}

class _PlayVidScreenState extends State<PlayVidScreen> {
  late VideoPlayerController _videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;

  String videoUrl =
      "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(videoUrl))
          ..initialize().then((_) {
            setState(() {
              // Start playing the video as soon as it's initialized
              _videoPlayerController.play();
              _videoPlayerController.setLooping(
                true,
              ); // Optional: Loop the video
            });
          });
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _videoPlayerController,
      customVideoPlayerSettings: CustomVideoPlayerSettings(
        controlBarAvailable: true,
        enterFullscreenOnStart: true,
      ),
    );
    _videoPlayerController.addListener(() {
      if (_videoPlayerController.value.isCompleted) {
        if (mounted) {
          setState(() {
            _videoPlayerController.seekTo(Duration.zero);
            _videoPlayerController.play();
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
          !_videoPlayerController.value.isInitialized &&
              !_videoPlayerController.value.isCompleted
          ? CupertinoPageScaffold(
              child: const Center(child: CupertinoActivityIndicator()),
            )
          : CustomVideoPlayer(
              customVideoPlayerController: _customVideoPlayerController,
            ),
    );
  }
}
