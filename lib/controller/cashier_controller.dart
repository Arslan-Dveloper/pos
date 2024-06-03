import 'package:get/get.dart';

class CashierControllerWindow extends GetxController {
  static const numberList = ["1", "2", "3", "4", "5", "6", "7"];
  var selectNumber = numberList.first.obs;

  var isTrueOneMAin = true.obs;
  var isTrueOne = true.obs;
  var isTrueTwo = true.obs;
  var isTrueThree = true.obs;
  var isTrueFour = true.obs;
  var isTrueFive = true.obs;
  var isTrueSix = true.obs;
  var isTrueSeven = true.obs;

  static const textList = ["On Table", "Parcel"];
  var selectText = textList.first.obs;

  static const textListTwo = ["On Table", "Parcel"];
  var selectTextTwo = textList.first.obs;

  var isTrue = true.obs;

  static const pizzaText = ["2x", "4x", "6x", "8x"];
  var selectedPizzaText = pizzaText.first.obs;
  static const pizzaStringText = [
    "Extra Cheez Layer",
    "Much More",
    "Extra",
    "Funny"
  ];
  var selectedStringPizzaText = pizzaStringText.first.obs;

  var number = 0.obs;
}
