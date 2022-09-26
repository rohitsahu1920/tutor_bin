import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutor_bin/controller/dashBoard_controller.dart';
import 'package:tutor_bin/models/item_model.dart';
import 'package:tutor_bin/utils/sizes.dart';
import 'package:tutor_bin/utils/ui_helper.dart';

import 'dropdown_items.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final int count;
  final MenuItems mi;
  final bool isEnable;
  final Function buttonClick;
  final DashBoardController controller;

  const ItemWidget(
      {required this.title,
      required this.count,
      required this.mi,
      required this.isEnable,
      required this.buttonClick,
      required this.controller,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(Sizes.s10, 0, Sizes.s10, 0),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const C10(),
                  Text(title),
                  const Spacer(),
                  Text("${itemsCount()}"),
                  const C10(),
                  isEnable
                      ? const Icon(Icons.abc)
                      : const Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          if (isEnable)
            DropDownWidget(mi: mi, count: count, buttonClick: buttonClick,controller: controller),
        ],
      ),
    );
  }

  int itemsCount() {
    switch (count) {
      case 1:
        return mi.cat1!.length;
      case 2:
        return mi.cat2!.length;
      case 3:
        return mi.cat3!.length;
      case 4:
        return mi.cat4!.length;
      case 5:
        return mi.cat5!.length;
      case 6:
        return mi.cat6!.length;
    }
    return 0;
  }
}
