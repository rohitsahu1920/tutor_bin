import 'package:flutter/material.dart';
import 'package:tutor_bin/res/app_colors.dart';
import 'package:tutor_bin/utils/sizes.dart';


class SecondaryTextButton extends StatelessWidget {
  final String? text;
  final Function()? onTap;
  final double? fontSize;
  final EdgeInsets? padding;

  const SecondaryTextButton({
    Key? key,
    this.onTap,
    this.text,
    this.fontSize,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          AppColors.white,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Sizes.s8,
          ),
          side: const BorderSide(
            color: Colors.amber,
          ),
        )),
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.symmetric(horizontal: Sizes.s8),
        child: Text(
          text!,
          style: TextStyle(
            color: AppColors.black,
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      onPressed: onTap!,
    );
  }
}
