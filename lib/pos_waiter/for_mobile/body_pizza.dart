import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../controller/app_controller.dart';
import '../../custom_widget/my_custom_widget.dart';
import '../../helper/constant.dart';

class my_barger extends StatelessWidget {
  const my_barger({
    super.key,
    required this.controller,
    required this.ScreenWidth,
  });

  final AppController controller;
  final double ScreenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
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
              width: 60.sp,
              height: 60.sp,
              child: Image.asset("assets/images/kindpng_1065884 1.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Pepperoni Pizza',
                        style: GoogleFonts.dmSans(
                            fontSize: 13.42.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (controller.selectedIndex.value > 0) {
                            controller.selectedIndex.value--;
                          }
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: AppColor.greyColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Image.asset('assets/images/minus.png'),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Obx(() {
                        return Text(
                          "${controller.selectedIndex.value}",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        );
                      }),
                      SizedBox(
                        width: 15,
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
                            color: AppColor.redColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Text(
                          'Rs.',
                          style: GoogleFonts.dmSans(
                              fontSize: 7.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColor.greyColor),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: MyText(
                          text: '850/',
                          textColor: AppColor.redColor,
                          fontSize: 15.44,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sizes',
                            style: GoogleFonts.dmSans(
                                fontSize: 8.sp, fontWeight: FontWeight.w400),
                          ),
                          Container(
                            width: 70.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColor.greyColor),
                            ),
                            child: Theme(
                              data: ThemeData(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                title: Text(
                                  '2x',
                                  style: TextStyle(fontSize: 7.sp),
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
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Others',
                            style: GoogleFonts.dmSans(
                                fontSize: 8.sp, fontWeight: FontWeight.w400),
                          ),
                          Container(
                            width: 125.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColor.greyColor),
                            ),
                            child: Theme(
                              data: ThemeData(
                                dividerColor: Colors.transparent,
                              ),
                              child: ExpansionTile(
                                title: Text(
                                  'Extra Cheez Layer',
                                  style: TextStyle(fontSize: 7.sp),
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
                            ),
                          )
                        ],
                      ),
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
