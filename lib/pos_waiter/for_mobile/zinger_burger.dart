import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/controller/app_controller.dart';
import 'package:sizer/sizer.dart';
import '../../helper/constant.dart';

class ZingerBurger extends StatelessWidget {
  const ZingerBurger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    var controller = Get.put(AppController());
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Obx(
                () {
                  return Checkbox(
                    value: controller.selectedForCheckBoxTwo.value,
                    onChanged: (value) {
                      controller.selectedForCheckBoxTwo.value = value!;
                    },
                    activeColor: AppColor.redColor,
                  );
                },
              ),
            ],
          ),
          Container(
            width: 63.sp,
            height: 60.sp,
            child: Image.asset('assets/images/burger 3.png'),
          ),
          SizedBox(width: 2,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Zinger Burger",
                    style: GoogleFonts.dmSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (controller.selectedIndexTwo.value > 0) {
                        controller.selectedIndexTwo.value--;
                      }
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: AppColor.greyColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset(
                        'assets/images/minus.png',
                        scale: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Obx(() {
                    return Text('${controller.selectedIndexTwo.value}');
                  }),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.selectedIndexTwo.value++;
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: AppColor.redColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        size: 15,
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Text(
                      'RS.',
                      style: GoogleFonts.dmSans(
                        fontSize: 8,
                        fontWeight: FontWeight.w700,
                        color: AppColor.greyColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      '850/',
                      style: GoogleFonts.dmSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: AppColor.redColor,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Size',
                        style: GoogleFonts.dmSans(fontSize: 8.sp),
                      ),
                      Container(
                        width: 70.sp,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColor.greyColor,
                            )),
                        child: Theme(
                           data: ThemeData(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text(
                              '2x',
                              style: GoogleFonts.dmSans(fontSize: 8.sp),
                            ),
                            children: [
                              Text('4x',
                                  style: GoogleFonts.dmSans(fontSize: 8.sp)),
                              Text('6x',
                                  style: GoogleFonts.dmSans(fontSize: 8.sp)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Others',
                            style: GoogleFonts.dmSans(fontSize: 8.sp)),
                        Container(
                          width: ScreenWidth * 0.43,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColor.greyColor,
                              )),
                          child: Theme(
                            data: ThemeData(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              title: Text('Extra Cheez Layer',
                                  style: GoogleFonts.dmSans(fontSize: 8.sp)),
                              children: [
                                Text('other'),
                                Text('other'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
