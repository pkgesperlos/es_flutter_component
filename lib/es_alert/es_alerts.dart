import 'package:es_flutter_component/es_alert/toast/toast_alert.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsAlerts {
  EsAlerts.error(BuildContext context, String message) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ToastAlert.show(context, text: message,textColor: Colors.white,backgroundColor: ColorAsset.danger);
    });
  }

  EsAlerts.success(BuildContext context, String message) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ToastAlert.show(context, text: message,textColor: Colors.white,backgroundColor: ColorAsset.success);
    });
  }

  EsAlerts.warning(BuildContext context, String message) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ToastAlert.show(context, text: message,textColor: Colors.white,backgroundColor: ColorAsset.warning);
    });
  }

}
