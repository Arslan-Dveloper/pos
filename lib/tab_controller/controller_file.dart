import 'package:get/get.dart';

class TabletController extends GetxController {
  var text = [
    "New Orders",
    "In progress",
    "Completed order",
  ].obs;

  static const allTime = [
    "15 min",
    "20 min",
    "25 min",
    "30 min",
  ];

  var time = allTime.first.obs;

  static const allTimeTwo = [
    "30 min",
    "35 min",
    "40 min",
    "45 min",
  ];

  var timeTwo = allTimeTwo.first.obs;
}
