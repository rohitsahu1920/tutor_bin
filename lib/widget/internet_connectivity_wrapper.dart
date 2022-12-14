import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:tutor_bin/dialogs/error_dialog.dart';
import 'package:tutor_bin/res/strings.dart';



class InternetConnectivityWrapper extends StatelessWidget {
  final Widget child;
  final bool isShowRestart;

  const InternetConnectivityWrapper({
    Key ?key,
    required this.child,
    this.isShowRestart = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConnectivityWidgetWrapper(
      disableInteraction: true,
      offlineWidget: ErrorDialog(
        errorMessage: Strings.noInternetMsg,
      ),
      child: child
    );
  }
}
