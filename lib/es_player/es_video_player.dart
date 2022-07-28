
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class EsVideoPlayer extends StatefulWidget {
  String videoUrl;
  Widget? playWidget;
  Widget? videoCover;
  EsVideoPlayer({required this.videoUrl,this.playWidget,this.videoCover});



  @override
  State<StatefulWidget> createState() {
    return _EsVideoPlayerState();
  }
}

class _EsVideoPlayerState extends State<EsVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = VideoPlayerController.network(widget.videoUrl,)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.isInitialized
          ? Stack(
        alignment: Alignment.center,
        children: [
          /*AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                  ),*/
          VideoPlayer(_controller),
          _controller.value.isPlaying?Container():widget.videoCover??Container(),
          InkWell(
              onTap: () {
                setState(() {
                  _controller.value.isPlaying
                      ? _controller.pause()
                      : _controller.play();
                });
              },
              child:_controller.value.isPlaying
                  ?Container()
                  :widget.playWidget?? Icon(Icons.play_arrow,color: Colors.white,)
          ),

        ],
      )
          : Container(),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

}
