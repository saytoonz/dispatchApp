import 'package:dispatch_lib/src/models/constants.dart';
import 'package:dispatch_lib/src/utils/appStyles.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:progress_indicators/progress_indicators.dart';

class GlobalWidgets {
  static Size getAppSize(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size;
  }

  static showFialureDialogue(String message, BuildContext context) async {
    AwesomeDialog(
        context: context,
        dialogType: DialogType.ERROR,
        animType: AnimType.TOPSLIDE,
        headerAnimationLoop: false,
        //   title: 'Error',
        body: Column(
          children: <Widget>[
            Text(
              "Error",
              style: AppTextStyles.appDarkHeaderTextStyle,
            ),
            Text(
              message,
              textAlign: TextAlign.center,
              style: AppTextStyles.appTextStyle,
            )
          ],
        ),
        //  desc: message,
        btnOkOnPress: () {
          //  Navigator.of(context).pop();
        },
        btnOkIcon: Icons.cancel,
        btnOkColor: Constants.primaryColorDark)
      ..show();
  }

  static Widget circularInidcator() {
    return JumpingText(
      "Loading...",
      style: AppTextStyles.appTextStyle,
    );
  }

  static showSuccessDialogue(String message, BuildContext context) async {
    AwesomeDialog(
        context: context,
        dialogType: DialogType.SUCCES,
        animType: AnimType.TOPSLIDE,
        headerAnimationLoop: false,
        // title: 'Error',
        body: Column(
          children: <Widget>[
            Text(
              "Sucess",
              style: AppTextStyles.appDarkHeaderTextStyle,
            ),
            Text(
              message,
              textAlign: TextAlign.center,
              style: AppTextStyles.appTextStyle,
            )
          ],
        ),
        //  desc: message,
        btnOkOnPress: () {
          //  Navigator.of(context).pop();
        },
        btnOkIcon: Icons.cancel,
        btnOkColor: Constants.primaryColorDark)
      ..show();
  }

  static showConfirmationDialogue(
      String message, BuildContext context, Function function) async {
    AwesomeDialog(
        context: context,
        dialogType: DialogType.WARNING,
        animType: AnimType.TOPSLIDE,
        headerAnimationLoop: true,

        // title: 'Error',
        body: Column(
          children: <Widget>[
            Text(
              "Confirm",
              style: AppTextStyles.appDarkHeaderTextStyle,
            ),
            Text(
              message,
              textAlign: TextAlign.center,
              style: AppTextStyles.appTextStyle,
            )
          ],
        ),
        //  desc: message,
        btnOkOnPress: function,
        btnCancelIcon: Icons.cancel,
        btnCancelOnPress: () {},
        btnOkIcon: Icons.check,
        btnOkColor: Constants.primaryColorDark)
      ..show();
  }
}
