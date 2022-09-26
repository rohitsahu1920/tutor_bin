import 'package:flutter/material.dart';
import 'package:tutor_bin/res/app_colors.dart';
import 'package:tutor_bin/screens/intro_screens/model/slide.dart';
import 'package:tutor_bin/utils/sizes.dart';
import 'package:tutor_bin/utils/textstyles.dart';
import 'package:tutor_bin/utils/ui_helper.dart';


class SliderItemWidget extends StatelessWidget {
  final int index;

  const SliderItemWidget(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const C30(),
        Image.asset(
          slideList[index].imageUrl,
          scale: Sizes.s4,
        ),
        const C40(),
        Text(
          slideList[index].title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: FontSizes.s18,
            fontFamily: FontFamily.medium,
          ),
        ),
        const Spacer(),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: FontSizes.s15,
            color: AppColors.greyText,
          ),
        ),
        const C30()
      ],
    );
  }
}
