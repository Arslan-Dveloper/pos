import 'package:get/get.dart';

import '../helper/constant.dart';

class AppController extends GetxController {
  var images = [
    "assets/images/pizza 1.png",
    "assets/images/burger 1.png",
    "assets/images/spaguetti 1.png",
  ].obs;

  var text = [
    "Pizza",
    "Burger",
    "Pasta",
  ].obs;

  var selectedForCheckBox = true.obs;
  var selectedForCheckBoxTwo = true.obs;
  var selectedIndex = 0.obs;
  var selectedIndexTwo = 0.obs;
  var selectedIndexThree = 0.obs;
  var selectedIndexFour = 0.obs;
  var selectedIndexFive = 0.obs;

  var customerIndex = 0.obs;

  RxList<int> numbers = <int>[
    0,
    0,
    0,
    0,
    0,
    0,
  ].obs;

  var selectForCheckBox = [
    true,
    true,
    true,
    true,
    true,
    true,
  ].obs;

  var customerOrderScreen = [
    "assets/images/kindpng_1065884 1.png",
    "assets/images/spaguetti 1.png",
    "assets/images/burger two.png",
    "assets/images/cup.png",
  ].obs;

  var customerOrderScreenText = [
    "Pepperoni Pizza",
    "Lasani Pasta",
    "Zinger Special",
    "Nescafe 3x Hot",
  ].obs;
}
