import 'package:flutter/material.dart';
import 'package:tutor_bin/controller/dashBoard_controller.dart';
import 'package:tutor_bin/models/item_model.dart';
import 'package:tutor_bin/utils/methods.dart';
import 'package:tutor_bin/utils/sizes.dart';
import 'package:tutor_bin/utils/ui_helper.dart';

class DropDownWidget extends StatelessWidget {
  final MenuItems mi;
  final int count;
  final Function buttonClick;
  final DashBoardController controller;

  const DropDownWidget(
      {required this.mi,
      required this.count,
      required this.buttonClick,
      required this.controller,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemsCount(),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {},
              child: Row(
                children: [
                  const C10(),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(Sizes.s20, 0, Sizes.s20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const C5(),
                          Text(itemName(index, true),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          const C5(),
                          Text(itemName(index, false)),
                          const C5(),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.white,
                          shadowColor: Colors.yellowAccent,
                          elevation: 3,
                          side: const BorderSide(
                            width: 1.0,
                            color: Colors.orange,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                          minimumSize: const Size(80, 40),
                          surfaceTintColor: Colors.yellow),
                      onPressed: () {
                        System.print("Index :: $index");
                        System.print("Index :: $index");
                        System.print("Index :: $index");
                        controller.totalAmount(itemName(index, false));
                      },
                      child: const Text(
                        'Add',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                ],
              ));
        },
        separatorBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(Sizes.s20, 0, Sizes.s20, 0),
            child: const Divider(),
          );
        },
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

  String itemName(int index, bool isName) {
    switch (count) {
      case 1:
        if (isName) {
          return mi.cat1![index].name ?? "";
        } else {
          return mi.cat1![index].price.toString();
        }
      case 2:
        if (isName) {
          return mi.cat2![index].name ?? "";
        } else {
          return mi.cat2![index].price.toString();
        }

      case 3:
        if (isName) {
          return mi.cat3![index].name ?? "";
        } else {
          return mi.cat3![index].price.toString();
        }
      case 4:
        if (isName) {
          return mi.cat4![index].name ?? "";
        } else {
          return mi.cat4![index].price.toString();
        }

      case 5:
        if (isName) {
          return mi.cat5![index].name ?? "";
        } else {
          return mi.cat5![index].price.toString();
        }
      case 6:
        if (isName) {
          return mi.cat6![index].name ?? "";
        } else {
          return mi.cat6![index].price.toString();
        }
    }
    return "";
  }
}
