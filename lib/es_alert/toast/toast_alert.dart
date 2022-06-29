import 'package:es_flutter_component/resources/Constants/enums.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:flutter/material.dart';

class ToastAlert {
  static show(BuildContext context,
      {required String text,
      ToastAlertDuration toastAlertDuration = ToastAlertDuration.long,
        Color? backgroundColor,
        Color? textColor,
      }) {
    OverlayState? overlayState = Overlay.of(context);
    OverlayEntry? overlayEntry;

    overlayEntry = OverlayEntry(builder: (context) {
      return ToastAlertBuilder(
          overlayState: overlayState,
          overlayEntry: overlayEntry,
          toastAlertDuration: toastAlertDuration,
          text: text,
          backgroundColor: backgroundColor,
        textColor: textColor,
      );
    });

    overlayState!.insert(overlayEntry);
  }
}

class ToastAlertBuilder extends StatefulWidget {
  OverlayState? overlayState;
  OverlayEntry? overlayEntry;
  ToastAlertDuration? toastAlertDuration;
  String text;
  Color? backgroundColor;
  Color? textColor;

  ToastAlertBuilder(
      {Key? key,
      this.overlayState,
      this.overlayEntry,
      this.toastAlertDuration,
      this.text = "",
      this.backgroundColor,
      this.textColor = Colors.black,
      })
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ToastAlertBuilderState();
  }
}

class ToastAlertBuilderState extends State<ToastAlertBuilder>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;


  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation =
        CurveTween(curve: Curves.fastOutSlowIn).animate(animationController!);

    animationController!.addListener(() {
      widget.overlayState!.setState(() {});
    });

    animationController!.forward();

    Future.delayed(Duration(
            seconds:
                widget.toastAlertDuration == ToastAlertDuration.long ? 3 : 2))
        .whenComplete(() => animationController!.reverse())
        .whenComplete(() => widget.overlayEntry!.remove());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.25,
      top: MediaQuery.of(context).size.height * 0.1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          child: FadeTransition(
            opacity: animation!,
            child: Container(
              alignment: Alignment.center,
              color: widget.backgroundColor??ColorAsset.success,
              width: MediaQuery.of(context).size.width*.5,
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
              child: Text(
                widget.text,
                style: TextStyle(color: widget.textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
