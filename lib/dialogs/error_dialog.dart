import 'package:flutter/material.dart';
import 'package:tutor_bin/res/strings.dart';
import 'package:tutor_bin/utils/assets.dart';
import 'package:tutor_bin/utils/sizes.dart';
import 'package:tutor_bin/utils/textstyles.dart';
import 'package:tutor_bin/utils/ui_helper.dart';
import 'package:tutor_bin/widget/buttons/secondary_text_button.dart';


class ErrorDialog extends StatelessWidget {
  final String errorMessage;

  const ErrorDialog({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(Sizes.s14),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(Sizes.s14),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Image.asset(
                    Assets.errorIcon,
                    height: Sizes.s40,
                    width: Sizes.s40,
                  ),
                  const C10(),
                  Center(
                    child: Text(
                      Strings.weAreSorry,
                      style: TextStyles.appBarTittle,
                    ),
                  ),
                  const C10(),
                  Center(
                    child: Text(
                      errorMessage,
                      style: TextStyles.defaultRegular,
                    ),
                  ),
                  Column(
                    children: [
                      const C10(),
                      SecondaryTextButton(
                        text: Strings.retry,
                        onTap: () {

                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
