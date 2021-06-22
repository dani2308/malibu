import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LiveCamScreen extends StatefulWidget {
  LiveCamScreen({Key key}) : super(key: key);

  @override
  _LiveCamScreenState createState() => _LiveCamScreenState();
}

class _LiveCamScreenState extends State<LiveCamScreen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        'https://beachcam.meo.pt/84194a08-406c-462d-9185-f73f9aa4d694');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              if (_controller.value.isPlaying) {
                _controller.pause();
              } else {
                _controller.play();
              }
            },
          );
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),

      // child: Container(
      //   child: WebView(
      //     initialUrl: Uri.dataFromString('https://beachcam.meo.pt/livecams/',
      //             mimeType: 'text/html')
      //         .toString(),
      //     javascriptMode: JavascriptMode.unrestricted,
      //   ),
      // ),
    );
  }
}
