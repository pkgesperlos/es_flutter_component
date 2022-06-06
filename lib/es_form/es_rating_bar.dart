import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class EsRatingBar extends StatefulWidget {
  const EsRatingBar({Key? key}) : super(key: key);

  @override
  _EsRatingBarState createState() => _EsRatingBarState();
}

class _EsRatingBarState extends State<EsRatingBar> {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
    
  }
}
