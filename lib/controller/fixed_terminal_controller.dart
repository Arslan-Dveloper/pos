import 'package:get/get.dart';

class FixedTerminalController extends GetxController {
  RxList images = [
    "assets/images/star 1.png",
    "assets/images/ice-cream 1.png",
    "assets/images/salad 1.png",
    "assets/images/coffee 1.png",
    "assets/images/hamburger 1.png",
    "assets/images/panna-cotta 1.png",
    "assets/images/salad (1) 1.png",
  ].obs;
  RxList text = [
    "Popular",
    "Ice Cream",
    "Rice Bowl",
    "Coffee",
    "Fast Food",
    "Dessert",
    "Salad",
  ].obs;

  var selectedIndex = 0.obs;

  var selectNumber = 0.obs;
  var firstText = true.obs;
  var secondText = false.obs;
  var thirdText = false.obs;

  var secondFirstText = true.obs;
  var secondSecondText = false.obs;
  var secondThirdText = false.obs;

  var selectedIndexCoff = 0.obs;
  var selectedIndexValina = 0.obs;
  var selectedIndexMocha = 0.obs;

  static const areaList = ['Hall', 'Porch', 'Boundry'];
  var area = areaList.first.obs;

  var isExpand = true.obs;
  var isExpandTwo = false.obs;
  var isExpandThree = false.obs;
  var isExpandFour = false.obs;
  var isExpandFive = false.obs;
  var isExpandSix = false.obs;

  static const sortList = ["sort by A-Z", "sort by Z-A"];
  var selectSort = sortList.first.obs;
}
