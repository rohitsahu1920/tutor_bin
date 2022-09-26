import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tutor_bin/models/item_model.dart';
import 'package:tutor_bin/res/strings.dart';
import 'package:tutor_bin/utils/methods.dart';

class DashBoardController extends GetxController {
  final isLoading = true.obs;
  final hasError = false.obs;
  final errorMessage = Strings.wrongMsg.obs;

  Future<String> getJson() {
    return rootBundle.loadString('assets/menu.json');
  }

  MenuItems? mi;

  Future<void> getData() async{
    mi = MenuItems.fromJson(json.decode(await getJson()));
    System.print("${mi!.cat1![0].name}");
  }

  var enableCartOne = false.obs;
  var enableCartTwo = false.obs;
  var enableCartThree = false.obs;
  var enableCartFour = false.obs;
  var enableCartFive = false.obs;
  var enableCartSix = false.obs;

  bool enableDisable (int index){
    bool returnValue = false;
    switch(index){
      case 0:
        enableCartOne.value = !enableCartOne.value;
        System.print("Zero :: ${enableCartOne.value}");
        returnValue = enableCartOne.value;
        break;
      case 1:
        enableCartTwo.value = !enableCartTwo.value;
        System.print("One :: ${enableCartTwo.value}");
        returnValue = enableCartTwo.value;
        break;
      case 2:
        enableCartThree.value = !enableCartThree.value;
        System.print("Two :: ${enableCartThree.value}");
        returnValue = enableCartThree.value;
        break;
      case 3:
        enableCartFour.value = !enableCartFour.value;
        System.print("Three :: ${enableCartFour.value}");
        returnValue = enableCartFour.value;
        break;
      case 4:
        enableCartFive.value = !enableCartFive.value;
        System.print("Four :: ${enableCartFive.value}");
        returnValue = enableCartFive.value;
        break;
      case 5:
        enableCartSix.value = !enableCartSix.value;
        System.print("Five :: ${enableCartSix.value}");
        returnValue = enableCartSix.value;
        break;

    }
    return returnValue;
  }

  bool returnEnableDisable (int index){
    bool returnValue = false;
    switch(index){
      case 0:
        //enableCartOne.value = !enableCartOne.value;
        System.print("Zero :: ${enableCartOne.value}");
        returnValue = enableCartOne.value;
        break;
      case 1:
        //enableCartTwo.value = !enableCartTwo.value;
        System.print("One :: ${enableCartTwo.value}");
        returnValue = enableCartTwo.value;
        break;
      case 2:
        //enableCartThree.value = !enableCartThree.value;
        System.print("Two :: ${enableCartThree.value}");
        returnValue = enableCartThree.value;
        break;
      case 3:
        //enableCartFour.value = !enableCartFour.value;
        System.print("Three :: ${enableCartFour.value}");
        returnValue = enableCartFour.value;
        break;
      case 4:
        //enableCartFive.value = !enableCartFive.value;
        System.print("Four :: ${enableCartFive.value}");
        returnValue = enableCartFive.value;
        break;
      case 5:
        //enableCartSix.value = !enableCartSix.value;
        System.print("Five :: ${enableCartSix.value}");
        returnValue = enableCartSix.value;
        break;

    }
    return returnValue;
  }

  var total = 0.obs;

  var showSecondButton = false.obs;

  totalAmount(String value){
    total.value = total.value+ int.parse(value);
    showSecondButton.value = true;
  }

}
