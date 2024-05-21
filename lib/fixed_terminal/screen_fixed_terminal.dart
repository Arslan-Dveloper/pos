import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/custom_widget/image_expand_widget.dart';
import 'package:pos/extention/padding_extention.dart';
import 'package:pos/fixed_terminal/screen_qr_code.dart';
import 'package:pos/helper/constant.dart';
import 'package:sizer/sizer.dart';

import '../controller/fixed_terminal_controller.dart';

class ScreenFixedTerminal extends StatelessWidget {
  const ScreenFixedTerminal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    var controller = Get.put(FixedTerminalController());
    return Scaffold(
      backgroundColor: AppColor.phoneNumberColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(width:width*0.63,color: Colors.cyan,),
              // Container(color: Colors.green,),
              Container(
                width: width * 0.67,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Choose Food Category',
                            style: dmSansFont.copyWith(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ).onlyPadding(left: 20),
                          Image.asset('assets/images/more.png', scale: 2.5)
                              .onlyPadding(right: 10)
                        ],
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 126,
                        child: ListView.builder(
                          itemCount: controller.images.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Obx(() {
                                return GestureDetector(
                                  onTap: () {
                                    controller.selectedIndex.value = index;
                                  },
                                  child: Container(
                                    width: 102,
                                    height: 126,
                                    decoration: BoxDecoration(
                                        color: controller.selectedIndex.value ==
                                                index
                                            ? AppColor.redColor.withOpacity(0.1)
                                            : AppColor.whiteColor,
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                            color: controller
                                                        .selectedIndex.value ==
                                                    index
                                                ? AppColor.redColor
                                                : Colors.transparent)),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 20),
                                        Container(
                                          height: 40,
                                          width: 40,
                                          child: Image.asset(
                                            '${controller.images[index]}',
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Text(
                                          '${controller.text[index]}',
                                          style: dmSansFont.copyWith(
                                            fontSize: controller
                                                        .selectedIndex.value ==
                                                    index
                                                ? 7.sp
                                                : 6.sp,
                                            fontWeight: FontWeight.w400,
                                            color: controller
                                                        .selectedIndex.value ==
                                                    index
                                                ? AppColor.redColor
                                                : AppColor.fixedGreyColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 44),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rice Bowl Menu',
                            style: dmSansFont.copyWith(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ).onlyPadding(left: 20),
                          Obx(() {
                            return DropdownButton(
                              focusColor: Colors.transparent,
                              icon: Image.asset(
                                "assets/images/dropdownbutton.png",
                                scale: 3.5,
                              ),
                              elevation: 0,
                              underline: SizedBox(),
                              value: controller.selectSort.value,
                              onChanged: (value) {
                                controller.selectSort.value = value!;
                              },
                              items: FixedTerminalController.sortList.map((e) {
                                return DropdownMenuItem(
                                  child: Text(
                                    e,
                                    style: dmSansFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.greyColor),
                                  ),
                                  value: e,
                                );
                              }).toList(),
                            );
                          })
                        ],
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Wrap(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Obx(() {
                                return GestureDetector(
                                  onTap: () {
                                    controller.isExpand.value =
                                        !controller.isExpand.value;
                                  },
                                  child: Container(
                                    width: 266,
                                    height:
                                        controller.isExpand.value ? 520 : 274,
                                    decoration: BoxDecoration(
                                      color: AppColor.whiteColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: controller.isExpand.value
                                        ? Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 13),
                                              Container(
                                                  child: Image.asset(
                                                      'assets/images/rice one.png'),
                                                  width: 238,
                                                  height: 172),
                                              SizedBox(height: 13),
                                              Text(
                                                'Thai Rice Bowl',
                                                style: dmSansFont.copyWith(
                                                    fontSize: 8.sp,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              SizedBox(height: 12),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "Rs.850",
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 8.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color:
                                                                  Colors.black),
                                                    ),
                                                    TextSpan(
                                                      text: " /Bowl",
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 4.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: AppColor
                                                                  .greyColor),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 24,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Eggs',
                                                        style:
                                                            dmSansFont.copyWith(
                                                                fontSize: 6.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                      ),
                                                      SizedBox(
                                                        height: 14,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                            value: controller
                                                                .firstText
                                                                .value,
                                                            onChanged: (value) {
                                                              controller
                                                                      .firstText
                                                                      .value =
                                                                  value!;
                                                            },
                                                            activeColor:
                                                                AppColor
                                                                    .redColor,
                                                          ),
                                                          Text(
                                                            'Sunny Side Up',
                                                            style: dmSansFont.copyWith(
                                                                fontSize: 5.sp,
                                                                color: AppColor
                                                                    .fixedGreyColor),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                            value: controller
                                                                .secondText
                                                                .value,
                                                            onChanged: (value) {
                                                              controller
                                                                      .secondText
                                                                      .value =
                                                                  value!;
                                                            },
                                                            activeColor:
                                                                AppColor
                                                                    .redColor,
                                                          ),
                                                          Text(
                                                            'Over Medium',
                                                            style: dmSansFont.copyWith(
                                                                fontSize: 5.sp,
                                                                color: AppColor
                                                                    .fixedGreyColor),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                            value: controller
                                                                .thirdText
                                                                .value,
                                                            onChanged: (value) {
                                                              controller
                                                                      .thirdText
                                                                      .value =
                                                                  value!;
                                                            },
                                                            activeColor:
                                                                AppColor
                                                                    .redColor,
                                                          ),
                                                          Text(
                                                            'Over Hard',
                                                            style: dmSansFont.copyWith(
                                                                fontSize: 5.sp,
                                                                color: AppColor
                                                                    .fixedGreyColor),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Spicy Level',
                                                        style:
                                                            dmSansFont.copyWith(
                                                                fontSize: 6.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                      ),
                                                      SizedBox(
                                                        height: 14,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                            value: controller
                                                                .secondFirstText
                                                                .value,
                                                            onChanged: (value) {
                                                              controller
                                                                  .secondFirstText
                                                                  .value = value!;
                                                            },
                                                            activeColor:
                                                                AppColor
                                                                    .redColor,
                                                          ),
                                                          Text(
                                                            'Mild',
                                                            style: dmSansFont.copyWith(
                                                                fontSize: 5.sp,
                                                                color: AppColor
                                                                    .fixedGreyColor),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                            value: controller
                                                                .secondSecondText
                                                                .value,
                                                            onChanged: (value) {
                                                              controller
                                                                  .secondSecondText
                                                                  .value = value!;
                                                            },
                                                            activeColor:
                                                                AppColor
                                                                    .redColor,
                                                          ),
                                                          Text(
                                                            'Medium',
                                                            style: dmSansFont.copyWith(
                                                                fontSize: 5.sp,
                                                                color: AppColor
                                                                    .fixedGreyColor),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                            value: controller
                                                                .secondThirdText
                                                                .value,
                                                            onChanged: (value) {
                                                              controller
                                                                  .secondThirdText
                                                                  .value = value!;
                                                            },
                                                            activeColor:
                                                                AppColor
                                                                    .redColor,
                                                          ),
                                                          Text(
                                                            'Extra Hot',
                                                            style: dmSansFont.copyWith(
                                                                fontSize: 5.sp,
                                                                color: AppColor
                                                                    .fixedGreyColor),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 26,
                                              ),
                                              Container(
                                                width: 237,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: AppColor.redColor,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Add to billing',
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 6.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: AppColor
                                                            .whiteColor),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ).onlyPadding(left: 12)
                                        : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 13),
                                              Container(
                                                  child: Image.asset(
                                                      'assets/images/rice one.png'),
                                                  width: 238,
                                                  height: 172),
                                              SizedBox(height: 13),
                                              Text(
                                                'Thai Rice Bowl',
                                                style: dmSansFont.copyWith(
                                                    fontSize: 8.sp,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              SizedBox(height: 13),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "Rs.850",
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 8.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color:
                                                                  Colors.black),
                                                    ),
                                                    TextSpan(
                                                      text: " /Bowl",
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 4.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: AppColor
                                                                  .greyColor),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ).onlyPadding(left: 12),
                                  ),
                                );
                              }).onlyPadding(left: 10),
                              SizedBox(
                                height: 21,
                              ),
                              Obx(() {
                                return GestureDetector(
                                  onTap: () {
                                    controller.isExpandTwo.value =
                                        !controller.isExpandTwo.value;
                                  },
                                  child: Container(
                                    width: 266,
                                    height: controller.isExpandTwo.value
                                        ? 520
                                        : 274,
                                    decoration: BoxDecoration(
                                      color: AppColor.whiteColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: controller.isExpandTwo.value
                                        ? Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 13),
                                              Container(
                                                  child: Image.asset(
                                                      'assets/images/curry rice.png'),
                                                  width: 238,
                                                  height: 172),
                                              SizedBox(height: 13),
                                              Text(
                                                'Curry Rice Bowl',
                                                style: dmSansFont.copyWith(
                                                    fontSize: 8.sp,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              SizedBox(height: 12),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "Rs.850",
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 8.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color:
                                                                  Colors.black),
                                                    ),
                                                    TextSpan(
                                                      text: " /Bowl",
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 4.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: AppColor
                                                                  .greyColor),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 24,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Eggs',
                                                        style:
                                                            dmSansFont.copyWith(
                                                                fontSize: 6.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                      ),
                                                      SizedBox(
                                                        height: 14,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                            value: controller
                                                                .firstText
                                                                .value,
                                                            onChanged: (value) {
                                                              controller
                                                                      .firstText
                                                                      .value =
                                                                  value!;
                                                            },
                                                            activeColor:
                                                                AppColor
                                                                    .redColor,
                                                          ),
                                                          Text(
                                                            'Sunny Side Up',
                                                            style: dmSansFont.copyWith(
                                                                fontSize: 5.sp,
                                                                color: AppColor
                                                                    .fixedGreyColor),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                            value: controller
                                                                .secondText
                                                                .value,
                                                            onChanged: (value) {
                                                              controller
                                                                      .secondText
                                                                      .value =
                                                                  value!;
                                                            },
                                                            activeColor:
                                                                AppColor
                                                                    .redColor,
                                                          ),
                                                          Text(
                                                            'Over Medium',
                                                            style: dmSansFont.copyWith(
                                                                fontSize: 5.sp,
                                                                color: AppColor
                                                                    .fixedGreyColor),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                            value: controller
                                                                .thirdText
                                                                .value,
                                                            onChanged: (value) {
                                                              controller
                                                                      .thirdText
                                                                      .value =
                                                                  value!;
                                                            },
                                                            activeColor:
                                                                AppColor
                                                                    .redColor,
                                                          ),
                                                          Text(
                                                            'Over Hard',
                                                            style: dmSansFont.copyWith(
                                                                fontSize: 5.sp,
                                                                color: AppColor
                                                                    .fixedGreyColor),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Spicy Level',
                                                        style:
                                                            dmSansFont.copyWith(
                                                                fontSize: 6.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                      ),
                                                      SizedBox(
                                                        height: 14,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                            value: controller
                                                                .secondFirstText
                                                                .value,
                                                            onChanged: (value) {
                                                              controller
                                                                  .secondFirstText
                                                                  .value = value!;
                                                            },
                                                            activeColor:
                                                                AppColor
                                                                    .redColor,
                                                          ),
                                                          Text(
                                                            'Mild',
                                                            style: dmSansFont.copyWith(
                                                                fontSize: 5.sp,
                                                                color: AppColor
                                                                    .fixedGreyColor),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                            value: controller
                                                                .secondSecondText
                                                                .value,
                                                            onChanged: (value) {
                                                              controller
                                                                  .secondSecondText
                                                                  .value = value!;
                                                            },
                                                            activeColor:
                                                                AppColor
                                                                    .redColor,
                                                          ),
                                                          Text(
                                                            'Medium',
                                                            style: dmSansFont.copyWith(
                                                                fontSize: 5.sp,
                                                                color: AppColor
                                                                    .fixedGreyColor),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Checkbox(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                            value: controller
                                                                .secondThirdText
                                                                .value,
                                                            onChanged: (value) {
                                                              controller
                                                                  .secondThirdText
                                                                  .value = value!;
                                                            },
                                                            activeColor:
                                                                AppColor
                                                                    .redColor,
                                                          ),
                                                          Text(
                                                            'Extra Hot',
                                                            style: dmSansFont.copyWith(
                                                                fontSize: 5.sp,
                                                                color: AppColor
                                                                    .fixedGreyColor),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 26,
                                              ),
                                              Container(
                                                width: 237,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: AppColor.redColor,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Add to billing',
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 6.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: AppColor
                                                            .whiteColor),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ).onlyPadding(left: 12)
                                        : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 13),
                                              Container(
                                                  child: Image.asset(
                                                      'assets/images/curry rice.png'),
                                                  width: 238,
                                                  height: 172),
                                              SizedBox(height: 13),
                                              Text(
                                                'Curry Rice Bowl',
                                                style: dmSansFont.copyWith(
                                                    fontSize: 8.sp,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              SizedBox(height: 13),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "Rs.850",
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 8.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color:
                                                                  Colors.black),
                                                    ),
                                                    TextSpan(
                                                      text: " /Bowl",
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 4.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: AppColor
                                                                  .greyColor),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ).onlyPadding(left: 12),
                                  ),
                                );
                              }).onlyPadding(left: 10),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(children: [
                            Obx(() {
                              return GestureDetector(
                                onTap: () {
                                  controller.isExpandFour.value =
                                      !controller.isExpandFour.value;
                                },
                                child: Container(
                                  width: 266,
                                  height:
                                      controller.isExpandFour.value ? 520 : 274,
                                  decoration: BoxDecoration(
                                    color: AppColor.whiteColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: controller.isExpandFour.value
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 13),
                                            Container(
                                                child: Image.asset(
                                                    'assets/images/smoke.png'),
                                                width: 238,
                                                height: 172),
                                            SizedBox(height: 13),
                                            Text(
                                              'Smoke Salmon Rice Bowl',
                                              style: dmSansFont.copyWith(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(height: 12),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Rs.850",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 8.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  TextSpan(
                                                    text: " /Bowl",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 4.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            AppColor.greyColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 24,
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Eggs',
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 6.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                    SizedBox(
                                                      height: 14,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .firstText.value,
                                                          onChanged: (value) {
                                                            controller.firstText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Sunny Side Up',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondText.value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Over Medium',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .thirdText.value,
                                                          onChanged: (value) {
                                                            controller.thirdText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Over Hard',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Spicy Level',
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 6.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                    SizedBox(
                                                      height: 14,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondFirstText
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondFirstText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Mild',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondSecondText
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondSecondText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Medium',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondThirdText
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondThirdText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Extra Hot',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 26,
                                            ),
                                            Container(
                                              width: 237,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: AppColor.redColor,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Add to billing',
                                                  style: dmSansFont.copyWith(
                                                      fontSize: 6.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color:
                                                          AppColor.whiteColor),
                                                ),
                                              ),
                                            )
                                          ],
                                        ).onlyPadding(left: 12)
                                      : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 13),
                                            Container(
                                                child: Image.asset(
                                                    'assets/images/smoke.png'),
                                                width: 238,
                                                height: 172),
                                            SizedBox(height: 13),
                                            Text(
                                              'Smoke Salmon Rice Bowl',
                                              style: dmSansFont.copyWith(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(height: 13),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Rs.850",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 8.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  TextSpan(
                                                    text: " /Bowl",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 4.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            AppColor.greyColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ).onlyPadding(left: 12),
                                ),
                              );
                            }).onlyPadding(left: 10),
                            SizedBox(
                              height: 21,
                            ),
                            Obx(() {
                              return GestureDetector(
                                onTap: () {
                                  controller.isExpandThree.value =
                                      !controller.isExpandThree.value;
                                },
                                child: Container(
                                  width: 266,
                                  height: controller.isExpandThree.value
                                      ? 520
                                      : 274,
                                  decoration: BoxDecoration(
                                    color: AppColor.whiteColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: controller.isExpandThree.value
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 13),
                                            Container(
                                                child: Image.asset(
                                                    'assets/images/bimpap rice.png'),
                                                width: 238,
                                                height: 172),
                                            SizedBox(height: 13),
                                            Text(
                                              'Bibimbap Rice Bowl',
                                              style: dmSansFont.copyWith(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(height: 12),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Rs.850",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 8.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  TextSpan(
                                                    text: " /Bowl",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 4.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            AppColor.greyColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 24,
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Eggs',
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 6.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                    SizedBox(
                                                      height: 14,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .firstText.value,
                                                          onChanged: (value) {
                                                            controller.firstText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Sunny Side Up',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondText.value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Over Medium',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .thirdText.value,
                                                          onChanged: (value) {
                                                            controller.thirdText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Over Hard',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Spicy Level',
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 6.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                    SizedBox(
                                                      height: 14,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondFirstText
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondFirstText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Mild',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondSecondText
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondSecondText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Medium',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondThirdText
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondThirdText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Extra Hot',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 26,
                                            ),
                                            Container(
                                              width: 237,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: AppColor.redColor,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Add to billing',
                                                  style: dmSansFont.copyWith(
                                                      fontSize: 6.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color:
                                                          AppColor.whiteColor),
                                                ),
                                              ),
                                            )
                                          ],
                                        ).onlyPadding(left: 12)
                                      : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 13),
                                            Container(
                                                child: Image.asset(
                                                    'assets/images/bimpap rice.png'),
                                                width: 238,
                                                height: 172),
                                            SizedBox(height: 13),
                                            Text(
                                              'Bibimbap Rice Bowl',
                                              style: dmSansFont.copyWith(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(height: 13),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Rs.850",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 8.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  TextSpan(
                                                    text: " /Bowl",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 4.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            AppColor.greyColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ).onlyPadding(left: 12),
                                ),
                              );
                            }).onlyPadding(left: 10),
                          ]),
                          SizedBox(
                            width: 10,
                          ),
                          Column(children: [
                            Obx(() {
                              return GestureDetector(
                                onTap: () {
                                  controller.isExpandFive.value =
                                      !controller.isExpandFive.value;
                                },
                                child: Container(
                                  width: 266,
                                  height:
                                      controller.isExpandFive.value ? 520 : 274,
                                  decoration: BoxDecoration(
                                    color: AppColor.whiteColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: controller.isExpandFive.value
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 13),
                                            Container(
                                                child: Image.asset(
                                                    'assets/images/healthy rice.png'),
                                                width: 238,
                                                height: 172),
                                            SizedBox(height: 13),
                                            Text(
                                              'Healthy Rice Bowl',
                                              style: dmSansFont.copyWith(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(height: 12),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Rs.850",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 8.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  TextSpan(
                                                    text: " /Bowl",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 4.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            AppColor.greyColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 24,
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Eggs',
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 6.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                    SizedBox(
                                                      height: 14,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .firstText.value,
                                                          onChanged: (value) {
                                                            controller.firstText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Sunny Side Up',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondText.value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Over Medium',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .thirdText.value,
                                                          onChanged: (value) {
                                                            controller.thirdText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Over Hard',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Spicy Level',
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 6.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                    SizedBox(
                                                      height: 14,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondFirstText
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondFirstText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Mild',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondSecondText
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondSecondText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Medium',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondThirdText
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondThirdText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Extra Hot',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 26,
                                            ),
                                            Container(
                                              width: 237,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: AppColor.redColor,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Add to billing',
                                                  style: dmSansFont.copyWith(
                                                      fontSize: 6.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color:
                                                          AppColor.whiteColor),
                                                ),
                                              ),
                                            )
                                          ],
                                        ).onlyPadding(left: 12)
                                      : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 13),
                                            Container(
                                                child: Image.asset(
                                                    'assets/images/healthy rice.png'),
                                                width: 238,
                                                height: 172),
                                            SizedBox(height: 13),
                                            Text(
                                              'Healthy Rice Bowl',
                                              style: dmSansFont.copyWith(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(height: 13),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Rs.850",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 8.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  TextSpan(
                                                    text: " /Bowl",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 4.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            AppColor.greyColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ).onlyPadding(left: 12),
                                ),
                              );
                            }).onlyPadding(left: 10),
                            SizedBox(
                              height: 21,
                            ),
                            Obx(() {
                              return GestureDetector(
                                onTap: () {
                                  controller.isExpandSix.value =
                                      !controller.isExpandSix.value;
                                },
                                child: Container(
                                  width: 266,
                                  height:
                                      controller.isExpandSix.value ? 520 : 274,
                                  decoration: BoxDecoration(
                                    color: AppColor.whiteColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: controller.isExpandSix.value
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 13),
                                            Container(
                                                child: Image.asset(
                                                    'assets/images/healthy rice.png'),
                                                width: 238,
                                                height: 172),
                                            SizedBox(height: 13),
                                            Text(
                                              'Bibimbap Rice Bowl',
                                              style: dmSansFont.copyWith(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(height: 12),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Rs.850",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 8.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  TextSpan(
                                                    text: " /Bowl",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 4.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            AppColor.greyColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 24,
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Eggs',
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 6.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                    SizedBox(
                                                      height: 14,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .firstText.value,
                                                          onChanged: (value) {
                                                            controller.firstText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Sunny Side Up',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondText.value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Over Medium',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .thirdText.value,
                                                          onChanged: (value) {
                                                            controller.thirdText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Over Hard',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Spicy Level',
                                                      style:
                                                          dmSansFont.copyWith(
                                                              fontSize: 6.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                    SizedBox(
                                                      height: 14,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondFirstText
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondFirstText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Mild',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondSecondText
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondSecondText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Medium',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50)),
                                                          value: controller
                                                              .secondThirdText
                                                              .value,
                                                          onChanged: (value) {
                                                            controller
                                                                .secondThirdText
                                                                .value = value!;
                                                          },
                                                          activeColor:
                                                              AppColor.redColor,
                                                        ),
                                                        Text(
                                                          'Extra Hot',
                                                          style: dmSansFont.copyWith(
                                                              fontSize: 5.sp,
                                                              color: AppColor
                                                                  .fixedGreyColor),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 26,
                                            ),
                                            Container(
                                              width: 237,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: AppColor.redColor,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Add to billing',
                                                  style: dmSansFont.copyWith(
                                                      fontSize: 6.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color:
                                                          AppColor.whiteColor),
                                                ),
                                              ),
                                            )
                                          ],
                                        ).onlyPadding(left: 12)
                                      : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 13),
                                            Container(
                                                child: Image.asset(
                                                    'assets/images/healthy rice.png'),
                                                width: 238,
                                                height: 172),
                                            SizedBox(height: 13),
                                            Text(
                                              'Bibimbap Rice Bowl',
                                              style: dmSansFont.copyWith(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(height: 13),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Rs.850",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 8.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black),
                                                  ),
                                                  TextSpan(
                                                    text: " /Bowl",
                                                    style: dmSansFont.copyWith(
                                                        fontSize: 4.sp,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            AppColor.greyColor),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ).onlyPadding(left: 12),
                                ),
                              );
                            }).onlyPadding(left: 10),
                          ])
                        ],
                      ),
                      // Wrap(
                      //   children: [
                      //     ImageExpandWidget(
                      //       onTapImage: () {
                      //         controller.isExpand.value =
                      //             !controller.isExpand.value;
                      //       },
                      //       isExpandImage: controller.isExpand.value = true,
                      //     )
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 36,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your Order',
                          style: dmSansFont.copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 187,
                        ),
                        Image.asset(
                          'assets/images/more.png',
                          scale: 3,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 31,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          child: Image.asset("assets/images/coffe.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Nescafe 3x Hot',
                                  style: dmSansFont.copyWith(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                Text(
                                  'RS.400',
                                  style: dmSansFont.copyWith(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cofee',
                                  style: dmSansFont.copyWith(
                                      fontSize: 6.sp,
                                      color: AppColor.greyColor),
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (controller.selectedIndexCoff > 0) {
                                      controller.selectedIndexCoff.value--;
                                    }
                                  },
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        color:
                                            AppColor.greyColor.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Image.asset(
                                        'assets/images/minus.png',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 9,
                                ),
                                Obx(() {
                                  return Text(
                                    '${controller.selectedIndexCoff.value}',
                                    style: dmSansFont.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  );
                                }),
                                SizedBox(
                                  width: 14,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectedIndexCoff.value++;
                                  },
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        color: AppColor.redColor,
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 15,
                                        color: AppColor.whiteColor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          child: Image.asset("assets/images/valina.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Vanilla Special',
                                  style: dmSansFont.copyWith(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width: 65,
                                ),
                                Text(
                                  'RS.400',
                                  style: dmSansFont.copyWith(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ice Cream',
                                  style: dmSansFont.copyWith(
                                      fontSize: 6.sp,
                                      color: AppColor.greyColor),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (controller.selectedIndexValina.value >
                                        0) {
                                      controller.selectedIndexValina.value--;
                                    }
                                  },
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        color:
                                            AppColor.greyColor.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Image.asset(
                                        'assets/images/minus.png',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 9,
                                ),
                                Obx(() {
                                  return Text(
                                    '${controller.selectedIndexValina.value}',
                                    style: dmSansFont.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  );
                                }),
                                SizedBox(
                                  width: 14,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectedIndexValina.value++;
                                  },
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        color: AppColor.redColor,
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 15,
                                        color: AppColor.whiteColor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          child: Image.asset("assets/images/mocha.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Mocha Ice Cream',
                                  style: dmSansFont.copyWith(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width: 45,
                                ),
                                Text(
                                  'RS.400',
                                  style: dmSansFont.copyWith(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ice Cream',
                                  style: dmSansFont.copyWith(
                                      fontSize: 6.sp,
                                      color: AppColor.greyColor),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (controller.selectedIndexMocha.value >
                                        0) {
                                      controller.selectedIndexMocha.value--;
                                    }
                                  },
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        color:
                                            AppColor.greyColor.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Image.asset(
                                        'assets/images/minus.png',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 9,
                                ),
                                Obx(() {
                                  return Text(
                                    '${controller.selectedIndexMocha.value}',
                                    style: dmSansFont.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  );
                                }),
                                SizedBox(
                                  width: 14,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectedIndexMocha.value++;
                                  },
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        color: AppColor.redColor,
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 15,
                                        color: AppColor.whiteColor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Row(
                      children: [
                        Text(
                          'Subtotal',
                          style: dmSansFont.copyWith(
                              fontSize: 14, color: AppColor.greyColor),
                        ),
                        SizedBox(
                          width: 210,
                        ),
                        Text(
                          'Rs.1900',
                          style: dmSansFont.copyWith(
                              fontSize: 14, color: AppColor.greyColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        Text(
                          'Discount',
                          style: dmSansFont.copyWith(
                              fontSize: 14, color: AppColor.greyColor),
                        ),
                        SizedBox(
                          width: 210,
                        ),
                        Text(
                          'Rs.200',
                          style: dmSansFont.copyWith(
                              fontSize: 14, color: AppColor.greyColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        Text(
                          'Tax',
                          style: dmSansFont.copyWith(
                              fontSize: 14, color: AppColor.greyColor),
                        ),
                        SizedBox(
                          width: 253,
                        ),
                        Text(
                          'Rs.150',
                          style: dmSansFont.copyWith(
                              fontSize: 14, color: AppColor.greyColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Image.asset(
                      'assets/images/doted line.png',
                      scale: 4.2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Total',
                          style: dmSansFont.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 240,
                        ),
                        Text(
                          'Rs.1850',
                          style: dmSansFont.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 39,
                    ),
                    Text(
                      'Customer Phone number',
                      style: dmSansFont.copyWith(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: 337,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: '+92 3080801585',
                            filled: true,
                            fillColor: AppColor.greyColor.withOpacity(0.2),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Table No.',
                      style: dmSansFont.copyWith(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    SizedBox(
                      width: 337,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: '#32',
                            filled: true,
                            fillColor: AppColor.greyColor.withOpacity(0.2),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 7.4,
                    ),
                    Text(
                      'Area',
                      style: dmSansFont.copyWith(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Container(
                      width: 337,
                      height: 49,
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColor.greyColor),
                      ),
                      child: Obx(() {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${controller.area.value}',
                              style: dmSansFont.copyWith(
                                  fontSize: 13,
                                  color: AppColor.moreDarkGrey,
                                  fontWeight: FontWeight.w700),
                            ).onlyPadding(left: 10),
                            DropdownButton(
                              underline: SizedBox(),
                              onChanged: (value) {
                                controller.area.value = value!;
                              },
                              items: FixedTerminalController.areaList.map((e) {
                                return DropdownMenuItem(
                                  child: Text(e),
                                  value: e,
                                );
                              }).toList(),
                              padding: EdgeInsets.only(right: 20),
                            ),
                          ],
                        );
                      }),
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Text(
                      'Payment Method',
                      style: dmSansFont.copyWith(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Container(
                      width: 140,
                      height: 80,
                      decoration: BoxDecoration(
                        color: AppColor.redColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: AppColor.redColor,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset('assets/images/card-pos.png'),
                            height: 24,
                            width: 24,
                          ).onlyPadding(top: 16),
                          Text(
                            'Online payment',
                            style: dmSansFont.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: AppColor.redColor,
                            ),
                          ).onlyPadding(top: 8)
                        ],
                      ),
                    ).onlyPadding(left: 99),
                    SizedBox(
                      height: 57,
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return AlertDialog(icon: Container(
                            width: 500,
                            height: 500,
                            child: Image.asset('assets/images/QR Code.png'),
                          ),);
                        },);
                      },
                      child: Container(
                        width: 340,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColor.redColor),
                        child: Center(
                          child: Text(
                            "Buy now",
                            style: dmSansFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColor.whiteColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ).onlyPadding(left: 90),
            ],
          ),
        ),
      ),
    );
  }
}
