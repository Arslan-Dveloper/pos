import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/app_controller.dart';
import '../helper/constant.dart';

class MyText extends StatelessWidget {
  String? text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? textColor;

  MyText({
    this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor,
      ),
    );
  }
}

class MyBurger extends StatelessWidget {
  const MyBurger({
    super.key,
    required this.controller,
    required this.ScreenWidth,
  });

  final AppController controller;
  final double ScreenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5,right: 5,top: 10),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() {
              return Checkbox(
                value: controller.selectedForCheckBox.value,
                onChanged: (value) {
                  controller.selectedForCheckBox.value = value!;
                },
                activeColor: AppColor.redColor,
              );
            }),
            Container(
              width: 90,
              height: 90,
              child: Image.asset(
                  "assets/images/kindpng_1065884 1.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Pepperoni Pizza',
                        style: GoogleFonts.dmSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.selectedIndex.value--;
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: AppColor.greyColor,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Image.asset(
                              'assets/images/minus.png'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Obx(() {
                        return Text(
                          "${controller.selectedIndex.value}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        );
                      }),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.selectedIndex.value++;
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: AppColor.redColor,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Image.asset(
                              'assets/images/minus.png'),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: MyText(
                          text: 'RS.',
                          textColor: AppColor.moreDarkGrey,
                          fontSize: 8.13,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: MyText(
                          text: '850',
                          textColor: AppColor.redColor,
                          fontSize: 15.44,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyText(
                        text: 'Sizes',
                        fontSize: 9.16,
                      ),
                      SizedBox(width: 140,),
                      MyText(
                        text: 'Other',
                        fontSize: 9.16,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: ScreenWidth * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                          Border.all(color: AppColor.greyColor),
                        ),
                        child: ExpansionTile(
                          title: Text('2x'),
                          children: [
                            MyText(
                              text: '4x',
                            ),
                            MyText(
                              text: '6x',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        width: ScreenWidth * 0.37,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: AppColor.greyColor)),
                        child: ExpansionTile(
                          title: Text(
                            'Extra Cheez Layer',
                            style: TextStyle(fontSize: 12),
                          ),
                          children: [
                            MyText(
                              text: '4x',
                            ),
                            MyText(
                              text: '6x',
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}