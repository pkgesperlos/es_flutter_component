import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class VideoTest extends StatefulWidget {
  const VideoTest({Key? key}) : super(key: key);

  @override
  _VideoTestState createState() => _VideoTestState();
}

class _VideoTestState extends State<VideoTest> {

  final videoPlayerController = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');


  late final chewieController;

  Future<bool> getData() async {
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
    );

     await videoPlayerController.initialize();

    return Future(() => true,);
  }

  @override
  Widget build(BuildContext context) {
    return Material(child: Center(child: FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return Chewie(
            controller: chewieController,
          );
        }
        return CircularProgressIndicator();
      },
    ),));
  }


  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
}
