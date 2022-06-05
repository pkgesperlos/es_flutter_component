import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class EsZoomingImage extends StatelessWidget {
  ImageProvider img;
  EsZoomingImage({Key? key,required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoView(
          imageProvider: img,
        )
    );
  }
}
