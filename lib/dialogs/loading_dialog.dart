import 'package:flutter/material.dart';
import 'package:tutor_bin/res/strings.dart';
import 'package:tutor_bin/utils/sizes.dart';
import 'package:tutor_bin/utils/ui_helper.dart';
import 'package:tutor_bin/widget/loader/double_bounce.dart';


class LoadingDialog extends StatelessWidget {
  const LoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(Sizes.s10),
        ),
      ),
      content: Container(
        width: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.s10),
        ),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SpinKitDoubleBounce(
              color: Colors.black,
              size: Sizes.s35,
            ),
            C10(),
            Text(
              Strings.pleaseWait,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: FontSizes.s16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
