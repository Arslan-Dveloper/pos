import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/extention/padding_extention.dart';
import 'package:pos/tab_controller/controller_file.dart';
import 'package:pos/tablet/custom/completed.dart';
import 'package:pos/tablet/screen_new_order_child.dart';

import '../helper/constant.dart';
import 'custom/in_progress.dart';

class ScreenNewOrder extends StatelessWidget {
  const ScreenNewOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(TabletController());
    var currentIndex = 0.obs;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [
              Positioned(
                right: 50,
                top: 20,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(0)),
                          content: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order Items',
                                  style: dmSansFont.copyWith(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.redColor,
                                  ),
                                ).onlyPadding(left: 130),
                                SizedBox(
                                  height: 30,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          "assets/images/kindpng.png"),
                                      width: 140,
                                      height: 90,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Lasani Pasta",
                                              style: dmSansFont.copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 70,
                                            ),
                                            Text(
                                              "Qty:",
                                              style: dmSansFont.copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Text(
                                              "2",
                                              style: dmSansFont.copyWith(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ).onlyPadding(top: 5, left: 7),
                                          ],
                                        ),
                                        Text(
                                          'Customer items',
                                          style: dmSansFont.copyWith(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.redColor),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Bowl Size',
                                                  style: GoogleFonts.notoSans()
                                                      .copyWith(fontSize: 11),
                                                ),
                                                Container(
                                                  width: 80,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    border: Border.all(
                                                      color: AppColor.greyColor,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Large",
                                                    style:
                                                        GoogleFonts.notoSans()
                                                            .copyWith(
                                                                fontSize: 11,
                                                                color: AppColor
                                                                    .textColor),
                                                  ).onlyPadding(
                                                      top: 10, left: 5),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Other',
                                                  style: GoogleFonts.notoSans()
                                                      .copyWith(fontSize: 11),
                                                ),
                                                Container(
                                                  width: 140,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    border: Border.all(
                                                      color: AppColor.greyColor,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Extra Moyounees",
                                                    style:
                                                        GoogleFonts.notoSans()
                                                            .copyWith(
                                                                fontSize: 11,
                                                                color: AppColor
                                                                    .textColor),
                                                  ).onlyPadding(
                                                      top: 10, left: 5),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ).onlyPadding(left: 140)
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          "assets/images/alert.png"),
                                      width: 140,
                                      height: 90,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Zinger Special",
                                              style: dmSansFont.copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 55,
                                            ),
                                            Text(
                                              "Qty:",
                                              style: dmSansFont.copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Text(
                                              "2",
                                              style: dmSansFont.copyWith(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ).onlyPadding(top: 5, left: 7),
                                          ],
                                        ),
                                        Text(
                                          'Customer items',
                                          style: dmSansFont.copyWith(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.redColor),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Bowl Size',
                                                  style: GoogleFonts.notoSans()
                                                      .copyWith(fontSize: 11),
                                                ),
                                                Container(
                                                  width: 80,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    border: Border.all(
                                                      color: AppColor.greyColor,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "2x",
                                                    style:
                                                        GoogleFonts.notoSans()
                                                            .copyWith(
                                                                fontSize: 11,
                                                                color: AppColor
                                                                    .textColor),
                                                  ).onlyPadding(
                                                      top: 10, left: 5),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Other',
                                                  style: GoogleFonts.notoSans()
                                                      .copyWith(fontSize: 11),
                                                ),
                                                Container(
                                                  width: 140,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    border: Border.all(
                                                      color: AppColor.greyColor,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Extra Moyounees",
                                                    style:
                                                        GoogleFonts.notoSans()
                                                            .copyWith(
                                                                fontSize: 11,
                                                                color: AppColor
                                                                    .textColor),
                                                  ).onlyPadding(
                                                      top: 10, left: 5),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ).onlyPadding(left: 140)
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          "assets/images/burger alert.png"),
                                      width: 140,
                                      height: 90,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Pizza Lassani",
                                              style: dmSansFont.copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 60,
                                            ),
                                            Text(
                                              "Qty:",
                                              style: dmSansFont.copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Text(
                                              "2",
                                              style: dmSansFont.copyWith(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ).onlyPadding(top: 5, left: 7),
                                          ],
                                        ),
                                        Text(
                                          'Customer items',
                                          style: dmSansFont.copyWith(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.redColor),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Other',
                                                  style: GoogleFonts.notoSans()
                                                      .copyWith(fontSize: 11),
                                                ),
                                                Container(
                                                  width: 140,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    border: Border.all(
                                                      color: AppColor.greyColor,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Extra Wings with Hot",
                                                    style:
                                                        GoogleFonts.notoSans()
                                                            .copyWith(
                                                                fontSize: 11,
                                                                color: AppColor
                                                                    .textColor),
                                                  ).onlyPadding(
                                                      top: 10, left: 5),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ).onlyPadding(left: 140)
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          "assets/images/chicken alert.png"),
                                      width: 140,
                                      height: 90,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Peproni Pizza",
                                              style: dmSansFont.copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 60,
                                            ),
                                            Text(
                                              "Qty:",
                                              style: dmSansFont.copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Text(
                                              "2",
                                              style: dmSansFont.copyWith(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ).onlyPadding(top: 5, left: 7),
                                          ],
                                        ),
                                        Text(
                                          'Customer items',
                                          style: dmSansFont.copyWith(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.redColor),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Bowl Size',
                                                  style: GoogleFonts.notoSans()
                                                      .copyWith(fontSize: 11),
                                                ),
                                                Container(
                                                  width: 80,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    border: Border.all(
                                                      color: AppColor.greyColor,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "3x",
                                                    style:
                                                        GoogleFonts.notoSans()
                                                            .copyWith(
                                                                fontSize: 11,
                                                                color: AppColor
                                                                    .textColor),
                                                  ).onlyPadding(
                                                      top: 10, left: 5),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Other',
                                                  style: GoogleFonts.notoSans()
                                                      .copyWith(fontSize: 11),
                                                ),
                                                Container(
                                                  width: 140,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    border: Border.all(
                                                      color: AppColor.greyColor,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Extra Moyounees",
                                                    style:
                                                        GoogleFonts.notoSans()
                                                            .copyWith(
                                                                fontSize: 11,
                                                                color: AppColor
                                                                    .textColor),
                                                  ).onlyPadding(
                                                      top: 10, left: 5),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ).onlyPadding(left: 140)
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          "assets/images/icecream alert.png"),
                                      width: 140,
                                      height: 90,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Ice-Cream A1",
                                              style: dmSansFont.copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 57,
                                            ),
                                            Text(
                                              "Qty:",
                                              style: dmSansFont.copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            Text(
                                              "2",
                                              style: dmSansFont.copyWith(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ).onlyPadding(top: 5, left: 7),
                                          ],
                                        ),
                                        Text(
                                          'Customer items',
                                          style: dmSansFont.copyWith(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.redColor),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Bowl Size',
                                                  style: GoogleFonts.notoSans()
                                                      .copyWith(fontSize: 11),
                                                ),
                                                Container(
                                                  width: 80,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    border: Border.all(
                                                      color: AppColor.greyColor,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Large",
                                                    style:
                                                        GoogleFonts.notoSans()
                                                            .copyWith(
                                                                fontSize: 11,
                                                                color: AppColor
                                                                    .textColor),
                                                  ).onlyPadding(
                                                      top: 10, left: 5),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Other',
                                                  style: GoogleFonts.notoSans()
                                                      .copyWith(fontSize: 11),
                                                ),
                                                Container(
                                                  width: 140,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    border: Border.all(
                                                      color: AppColor.greyColor,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Extra Moyounees",
                                                    style:
                                                        GoogleFonts.notoSans()
                                                            .copyWith(
                                                                fontSize: 11,
                                                                color: AppColor
                                                                    .textColor),
                                                  ).onlyPadding(
                                                      top: 10, left: 5),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ).onlyPadding(
                                      left: 140,
                                    )
                                  ],
                                ).onlyPadding(right: 20),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child:
                                      Image.asset("assets/images/Button.png"),
                                ).onlyPadding(left: 200,top: 30)
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/images/order.png'),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Orders from hotel',
                    style: GoogleFonts.dmSans().copyWith(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry's standard dummy text.",
                    style: GoogleFonts.dmSans().copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.greyColor),
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                      padding: EdgeInsets.all(0),
                      shrinkWrap: true,
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Obx(() {
                          return GestureDetector(
                            onTap: () {
                              currentIndex.value = index;
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: currentIndex == index
                                        ? Colors.red
                                        : Colors.transparent,
                                  ),
                                ),
                              ),
                              child: Text(
                                '${controller.text[index]}',
                                style: GoogleFonts.inter().copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: currentIndex == index
                                        ? AppColor.redColor
                                        : AppColor.blackColor),
                              ),
                            ).onlyPadding(right: 5),
                          );
                        });
                      },
                    ),
                  ),
                  Obx(() {
                    return IndexedStack(
                      index: currentIndex.value,
                      children: [
                        ScreenNewOrderChild(),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Order ID.',
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Text(
                                    'Customer name',
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Text(
                                    'Status',
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Text(
                                    'Area',
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Text(
                                    'Table',
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Text(
                                    'Order items',
                                    style: GoogleFonts.dmSans().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                endIndent: 250,
                                height: 0,
                              ),
                              Column(
                                children: [
                                  InProgress(
                                    orderIdText: "#CR0001",
                                    customerName: "Muhammad Ali",
                                    tableNumber: "06",
                                    widthContainer: 110,
                                  ),
                                  InProgress(
                                    orderIdText: "#CR0002",
                                    customerName: """Raheel""",
                                    tableNumber: "05",
                                    widthContainer: 163,
                                    containerColor: Colors.transparent,
                                  ),
                                  InProgress(
                                    orderIdText: "#CR0003",
                                    customerName: "Tasawar",
                                    tableNumber: "25",
                                    widthContainer: 152,
                                  ),
                                  InProgress(
                                    orderIdText: "#CR0004",
                                    customerName: "Hamza",
                                    tableNumber: "32",
                                    widthContainer: 162,
                                    containerColor: Colors.transparent,
                                  ),
                                  InProgress(
                                    orderIdText: "#CR0005",
                                    customerName: "Tasawar",
                                    tableNumber: "25",
                                    widthContainer: 153,
                                  ),
                                  InProgress(
                                    orderIdText: "#CR0006",
                                    customerName: "Muhammad Ali",
                                    tableNumber: "32",
                                    widthContainer: 110,
                                    containerColor: Colors.transparent,
                                  ),
                                  InProgress(
                                    orderIdText: "#CR0006",
                                    customerName: "Raheel Baloch ",
                                    tableNumber: "16",
                                    widthContainer: 110,
                                  ),
                                  InProgress(
                                    orderIdText: "#CR0007",
                                    customerName: "Safullah",
                                    tableNumber: "27",
                                    widthContainer: 156,
                                    containerColor: Colors.transparent,
                                  ),
                                  InProgress(
                                    orderIdText: "#CR0002",
                                    customerName: """Raheel""",
                                    tableNumber: "05",
                                    widthContainer: 163,
                                  ),
                                  InProgress(
                                    orderIdText: "#CR0003",
                                    customerName: "Tasawar",
                                    tableNumber: "25",
                                    widthContainer: 152,
                                    containerColor: Colors.transparent,
                                  ),
                                  InProgress(
                                    orderIdText: "#CR0004",
                                    customerName: "Hamza",
                                    tableNumber: "32",
                                    widthContainer: 162,
                                  ),
                                  InProgress(
                                    orderIdText: "#CR0005",
                                    customerName: "Tasawar",
                                    tableNumber: "25",
                                    widthContainer: 153,
                                    containerColor: Colors.transparent,
                                  ),
                                ],
                              )
                            ],
                          ).onlyPadding(left: 30, top: 46),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Order ID.',
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Text(
                                    'Customer name',
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Text(
                                    'Status',
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Text(
                                    'Area',
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Text(
                                    'Table',
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Text(
                                    'Order items',
                                    style: GoogleFonts.dmSans().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                endIndent: 145,
                                height: 0,
                              ),
                              Column(
                                children: [
                                  Completed(
                                    orderIdText: "#CR0001",
                                    customerName: "Muhammad Ali",
                                    tableNumber: "06",
                                    widthContainer: 110,
                                  ),
                                  Completed(
                                    orderIdText: "#CR0002",
                                    customerName: """Raheel""",
                                    tableNumber: "05",
                                    widthContainer: 163,
                                    containerColor: Colors.transparent,
                                  ),
                                  Completed(
                                    orderIdText: "#CR0003",
                                    customerName: "Tasawar",
                                    tableNumber: "25",
                                    widthContainer: 152,
                                  ),
                                  Completed(
                                    orderIdText: "#CR0004",
                                    customerName: "Hamza",
                                    tableNumber: "32",
                                    widthContainer: 162,
                                    containerColor: Colors.transparent,
                                  ),
                                  Completed(
                                    orderIdText: "#CR0005",
                                    customerName: "Tasawar",
                                    tableNumber: "25",
                                    widthContainer: 153,
                                  ),
                                  Completed(
                                    orderIdText: "#CR0006",
                                    customerName: "Muhammad Ali",
                                    tableNumber: "32",
                                    widthContainer: 110,
                                    containerColor: Colors.transparent,
                                  ),
                                  Completed(
                                    orderIdText: "#CR0006",
                                    customerName: "Raheel Baloch ",
                                    tableNumber: "16",
                                    widthContainer: 110,
                                  ),
                                  Completed(
                                    orderIdText: "#CR0007",
                                    customerName: "Safullah",
                                    tableNumber: "27",
                                    widthContainer: 156,
                                    containerColor: Colors.transparent,
                                  ),
                                  Completed(
                                    orderIdText: "#CR0002",
                                    customerName: """Raheel""",
                                    tableNumber: "05",
                                    widthContainer: 163,
                                  ),
                                  Completed(
                                    orderIdText: "#CR0003",
                                    customerName: "Tasawar",
                                    tableNumber: "25",
                                    widthContainer: 152,
                                    containerColor: Colors.transparent,
                                  ),
                                  Completed(
                                    orderIdText: "#CR0004",
                                    customerName: "Hamza",
                                    tableNumber: "32",
                                    widthContainer: 162,
                                  ),
                                  Completed(
                                    orderIdText: "#CR0005",
                                    customerName: "Tasawar",
                                    tableNumber: "25",
                                    widthContainer: 153,
                                    containerColor: Colors.transparent,
                                  ),
                                ],
                              )
                            ],
                          ).onlyPadding(left: 30, top: 46),
                        )
                      ],
                    );
                  })
                ],
              ).onlyPadding(left: 46, top: 49),
            ],
          ),
        ),
      ),
    );
  }
}
