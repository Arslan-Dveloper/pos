import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controller/app_controller.dart';
import 'package:pos/custom_widget/my_custom_widget.dart';
import 'package:pos/extention/padding_extention.dart';
import 'package:pos/helper/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'customer_order_screen.dart';

class Pizza extends StatelessWidget {
  const Pizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var controller = Get.put(AppController());

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

    var selectedImage = images[0].obs;
    var currentIndex = 0.obs;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                width: ScreenWidth * 0.7,
                child: Image.asset("assets/images/Background shape.png"),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: RichText(
                        text: TextSpan(
                          text: "Get your food",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'heebo',
                              color: AppColor.greyColor),
                          children: [
                            TextSpan(
                              text: "\nDelivered!",
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'heebo',
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Catagories',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // SingleChildScrollView(
                    //   scrollDirection: Axis.horizontal,
                    //   child: Obx(() {
                    //     return Row(
                    //       children: images
                    //           .map(
                    //             (element) =>
                    //             GestureDetector(
                    //               onTap: () {
                    //                 selectedImage.value = element;
                    //               },
                    //               child: Container(
                    //                 margin: EdgeInsets.only(left: 10),
                    //                 width: ScreenWidth * 0.35,
                    //                 decoration: BoxDecoration(
                    //                   color: selectedImage.value == element
                    //                       ? AppColor.redColor
                    //                       : AppColor.whiteColor,
                    //                   borderRadius: BorderRadius.circular(18),
                    //                 ),
                    //                 child: Column(
                    //                   children: [
                    //                     Container(
                    //                       child: Image.asset('${element}'),
                    //                       padding: EdgeInsets.symmetric(
                    //                           horizontal: 15, vertical: 10),
                    //                     ),
                    //                     Text(
                    //                       'Pizza',
                    //                       style: TextStyle(
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                         color: selectedImage.value == element
                    //                             ? AppColor.whiteColor
                    //                             : AppColor.redColor,
                    //                       ),
                    //                     ),
                    //                     Container(
                    //                       margin:
                    //                       EdgeInsets.symmetric(vertical: 10),
                    //                       width: 40,
                    //                       height: 40,
                    //                       decoration: BoxDecoration(
                    //                         color: selectedImage.value == element
                    //                             ? AppColor.whiteColor
                    //                             : AppColor.redColor,
                    //                         borderRadius:
                    //                         BorderRadius.circular(50),
                    //                       ),
                    //                       child: Center(
                    //                         child: Image.asset(
                    //                           'assets/images/Arrow - Right 2.png',
                    //                           color:
                    //                           selectedImage.value == element
                    //                               ? AppColor.redColor
                    //                               : AppColor.whiteColor,
                    //                         ),
                    //                       ),
                    //                     )
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //       )
                    //           .toList(),
                    //     );
                    //   }),
                    // ),

                    //Size box two here
                    SizedBox(
                      height: 250,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: controller.images.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Obx(() {
                                return GestureDetector(
                                  onTap: () {
                                    currentIndex.value = index;
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 10),
                                    width: ScreenWidth * 0.35,
                                    decoration: BoxDecoration(
                                      color: currentIndex.value == index
                                          ? AppColor.redColor
                                          : AppColor.whiteColor,
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Image.asset(
                                              '${controller.images[index]}'),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 35, vertical: 20),
                                        ),
                                        Text(
                                          '${controller.text[index]}',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: currentIndex == index
                                                  ? AppColor.whiteColor
                                                  : Colors.black),
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10),
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: currentIndex == index
                                                ? AppColor.whiteColor
                                                : AppColor.redColor,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              'assets/images/Arrow - Right 2.png',
                                              color: currentIndex == index
                                                  ? AppColor.redColor
                                                  : AppColor.whiteColor,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Flavors',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColor.darkGreyColor.withOpacity(0.5),
                            fontFamily: 'heebo'),
                      ),
                    ),
                    Obx(() {
                      return IndexedStack(
                        index: currentIndex.value,
                        children: [
                          Column(
                            children: [
                              // my_barger(
                              //     controller: controller,
                              //     ScreenWidth: ScreenWidth),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // my_barger(
                              //     controller: controller,
                              //     ScreenWidth: ScreenWidth),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // my_barger(
                              //     controller: controller,
                              //     ScreenWidth: ScreenWidth),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // my_barger(
                              //     controller: controller,
                              //     ScreenWidth: ScreenWidth),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // my_barger(
                              //     controller: controller,
                              //     ScreenWidth: ScreenWidth),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              ListView.builder(
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Container(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Obx(() {
                                            return Checkbox(
                                              value: controller
                                                  .selectForCheckBox[index],
                                              onChanged: (value) {
                                                controller.selectForCheckBox[
                                                    index] = value!;
                                              },
                                              activeColor: AppColor.redColor,
                                            );
                                          }),
                                          Container(
                                            width: 60.sp,
                                            height: 60.sp,
                                            child: Image.asset(
                                                "assets/images/kindpng_1065884 1.png"),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 4),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Pepperoni Pizza',
                                                      style: GoogleFonts.dmSans(
                                                          fontSize: 13.42.sp,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    SizedBox(
                                                      width: 40,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        if (controller.numbers[
                                                                index] >
                                                            0) {
                                                          controller
                                                              .numbers[index]--;
                                                        }
                                                      },
                                                      child: Container(
                                                        width: 20,
                                                        height: 20,
                                                        padding:
                                                            EdgeInsets.all(4),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: AppColor
                                                              .greyColor
                                                              .withOpacity(0.5),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(7),
                                                        ),
                                                        child: Image.asset(
                                                            'assets/images/minus.png'),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Obx(() {
                                                      return Text(
                                                        "${controller.numbers[index]}",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      );
                                                    }),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        controller
                                                            .numbers[index]++;
                                                      },
                                                      child: Container(
                                                        width: 20,
                                                        height: 20,
                                                        padding:
                                                            EdgeInsets.all(4),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: AppColor
                                                              .redColor
                                                              .withOpacity(0.5),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(7),
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
                                                      padding: EdgeInsets.only(
                                                          top: 2),
                                                      child: Text(
                                                        'Rs.',
                                                        style:
                                                            GoogleFonts.dmSans(
                                                                fontSize: 7.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: AppColor
                                                                    .greyColor),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 20),
                                                      child: MyText(
                                                        text: '850/',
                                                        textColor:
                                                            AppColor.redColor,
                                                        fontSize: 15.44,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Sizes',
                                                          style: GoogleFonts
                                                              .dmSans(
                                                                  fontSize:
                                                                      8.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                        ),
                                                        Container(
                                                          width: 70.sp,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            border: Border.all(
                                                                color: AppColor
                                                                    .greyColor),
                                                          ),
                                                          child: Theme(
                                                            data: ThemeData(
                                                                dividerColor: Colors
                                                                    .transparent),
                                                            child:
                                                                ExpansionTile(
                                                              title: Text(
                                                                '2x',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        7.sp),
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
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Others',
                                                          style: GoogleFonts
                                                              .dmSans(
                                                                  fontSize:
                                                                      8.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                        ),
                                                        Container(
                                                          width: 125.sp,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            border: Border.all(
                                                                color: AppColor
                                                                    .greyColor),
                                                          ),
                                                          child: Theme(
                                                            data: ThemeData(
                                                              dividerColor: Colors
                                                                  .transparent,
                                                            ),
                                                            child:
                                                                ExpansionTile(
                                                              title: Text(
                                                                'Extra Cheez Layer',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        7.sp),
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
                                },
                                itemCount: 5,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              // ZingerBurger(),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // ZingerBurger(),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // ZingerBurger(),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // ZingerBurger(),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // ZingerBurger(),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // ListView.builder(
                              //   itemBuilder: (context, index) {
                              //     return Padding(
                              //       padding: EdgeInsets.only(top: 20),
                              //       child: Container(
                              //         child: Row(
                              //           crossAxisAlignment:
                              //               CrossAxisAlignment.start,
                              //           children: [
                              //             Row(
                              //               children: [
                              //                 Obx(
                              //                   () {
                              //                     return Checkbox(
                              //                       value: controller
                              //                               .selectForCheckBox[
                              //                           index],
                              //                       onChanged: (value) {
                              //                         controller
                              //                                 .selectForCheckBox[
                              //                             index] = value!;
                              //                       },
                              //                       activeColor:
                              //                           AppColor.redColor,
                              //                     );
                              //                   },
                              //                 ),
                              //               ],
                              //             ),
                              //             Container(
                              //               width: 80,
                              //               height: 65,
                              //               child: Image.asset(
                              //                   'assets/images/burger 3.png'),
                              //             ).onlyPadding(top: 10),
                              //             SizedBox(
                              //               width: 2,
                              //             ),
                              //             Column(
                              //               crossAxisAlignment:
                              //                   CrossAxisAlignment.start,
                              //               children: [
                              //                 Row(
                              //                   children: [
                              //                     Text(
                              //                       "Zinger Burger",
                              //                       style: GoogleFonts.dmSans(
                              //                         fontSize: 15,
                              //                         fontWeight:
                              //                             FontWeight.w700,
                              //                       ),
                              //                     ),
                              //                     SizedBox(
                              //                       width: 80,
                              //                     ),
                              //                     GestureDetector(
                              //                       onTap: () {
                              //                         if (controller
                              //                                 .numbers[index] >
                              //                             0) {
                              //                           controller
                              //                               .numbers[index]--;
                              //                         }
                              //                       },
                              //                       child: Container(
                              //                         width: 20,
                              //                         height: 20,
                              //                         decoration: BoxDecoration(
                              //                           color: AppColor
                              //                               .greyColor
                              //                               .withOpacity(0.5),
                              //                           borderRadius:
                              //                               BorderRadius
                              //                                   .circular(5),
                              //                         ),
                              //                         child: Image.asset(
                              //                           'assets/images/minus.png',
                              //                           scale: 10,
                              //                         ),
                              //                       ),
                              //                     ),
                              //                     SizedBox(
                              //                       width: 20,
                              //                     ),
                              //                     Obx(() {
                              //                       return Text(
                              //                           '${controller.numbers[index]}');
                              //                     }),
                              //                     SizedBox(
                              //                       width: 20,
                              //                     ),
                              //                     GestureDetector(
                              //                       onTap: () {
                              //                         controller
                              //                             .numbers[index]++;
                              //                       },
                              //                       child: Container(
                              //                         width: 20,
                              //                         height: 20,
                              //                         decoration: BoxDecoration(
                              //                           color: AppColor.redColor
                              //                               .withOpacity(0.5),
                              //                           borderRadius:
                              //                               BorderRadius
                              //                                   .circular(5),
                              //                         ),
                              //                         child: Center(
                              //                             child: Icon(
                              //                           Icons.add,
                              //                           size: 15,
                              //                         )),
                              //                       ),
                              //                     ),
                              //                   ],
                              //                 ),
                              //                 SizedBox(
                              //                   height: 3,
                              //                 ),
                              //                 Stack(
                              //                   children: [
                              //                     Padding(
                              //                       padding:
                              //                           EdgeInsets.only(top: 3),
                              //                       child: Text(
                              //                         'RS.',
                              //                         style: GoogleFonts.dmSans(
                              //                           fontSize: 8,
                              //                           fontWeight:
                              //                               FontWeight.w700,
                              //                           color:
                              //                               AppColor.greyColor,
                              //                         ),
                              //                       ),
                              //                     ),
                              //                     Padding(
                              //                       padding: EdgeInsets.only(
                              //                           left: 12),
                              //                       child: Text(
                              //                         '850/',
                              //                         style: GoogleFonts.dmSans(
                              //                           fontSize: 15,
                              //                           fontWeight:
                              //                               FontWeight.w700,
                              //                           color:
                              //                               AppColor.redColor,
                              //                         ),
                              //                       ),
                              //                     )
                              //                   ],
                              //                 ),
                              //                 SizedBox(
                              //                   height: 3,
                              //                 ),
                              //                 Row(
                              //                   children: [
                              //                     Column(
                              //                       crossAxisAlignment:
                              //                           CrossAxisAlignment
                              //                               .start,
                              //                       children: [
                              //                         Text(
                              //                           'Size',
                              //                           style:
                              //                               GoogleFonts.dmSans(
                              //                                   fontSize: 8.sp),
                              //                         ),
                              //                         Container(
                              //                           width: 70.sp,
                              //                           decoration:
                              //                               BoxDecoration(
                              //                                   borderRadius:
                              //                                       BorderRadius
                              //                                           .circular(
                              //                                               10),
                              //                                   border:
                              //                                       Border.all(
                              //                                     color: AppColor
                              //                                         .greyColor,
                              //                                   )),
                              //                           child: Theme(
                              //                             data: ThemeData(
                              //                                 dividerColor: Colors
                              //                                     .transparent),
                              //                             child: ExpansionTile(
                              //                               title: Text(
                              //                                 '2x',
                              //                                 style: GoogleFonts
                              //                                     .dmSans(
                              //                                         fontSize:
                              //                                             8.sp),
                              //                               ),
                              //                               children: [
                              //                                 Text('4x',
                              //                                     style: GoogleFonts
                              //                                         .dmSans(
                              //                                             fontSize:
                              //                                                 8.sp)),
                              //                                 Text('6x',
                              //                                     style: GoogleFonts
                              //                                         .dmSans(
                              //                                             fontSize:
                              //                                                 8.sp)),
                              //                               ],
                              //                             ),
                              //                           ),
                              //                         )
                              //                       ],
                              //                     ),
                              //                     Padding(
                              //                       padding: EdgeInsets.only(
                              //                           left: 2),
                              //                       child: Column(
                              //                         crossAxisAlignment:
                              //                             CrossAxisAlignment
                              //                                 .start,
                              //                         children: [
                              //                           Text('Others',
                              //                               style: GoogleFonts
                              //                                   .dmSans(
                              //                                       fontSize:
                              //                                           8.sp)),
                              //                           Container(
                              //                             width: ScreenWidth *
                              //                                 0.43,
                              //                             decoration:
                              //                                 BoxDecoration(
                              //                                     borderRadius:
                              //                                         BorderRadius
                              //                                             .circular(
                              //                                                 10),
                              //                                     border: Border
                              //                                         .all(
                              //                                       color: AppColor
                              //                                           .greyColor,
                              //                                     )),
                              //                             child: Theme(
                              //                               data: ThemeData(
                              //                                   dividerColor: Colors
                              //                                       .transparent),
                              //                               child:
                              //                                   ExpansionTile(
                              //                                 title: Text(
                              //                                     'Extra Cheez Layer',
                              //                                     style: GoogleFonts
                              //                                         .dmSans(
                              //                                             fontSize:
                              //                                                 7.sp)),
                              //                                 children: [
                              //                                   Text('other'),
                              //                                   Text('other'),
                              //                                 ],
                              //                               ),
                              //                             ),
                              //                           )
                              //                         ],
                              //                       ),
                              //                     ),
                              //                   ],
                              //                 )
                              //               ],
                              //             )
                              //           ],
                              //         ),
                              //       ),
                              //     );
                              //   },
                              //   itemCount: 5,
                              //   shrinkWrap: true,
                              //   physics: NeverScrollableScrollPhysics(),
                              // )
                              ListView.builder(
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Container(
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Obx(() {
                                            return Checkbox(
                                              value: controller
                                                  .selectForCheckBox[index],
                                              onChanged: (value) {
                                                controller.selectForCheckBox[
                                                index] = value!;
                                              },
                                              activeColor: AppColor.redColor,
                                            );
                                          }),
                                          Container(
                                            width: 60.sp,
                                            height: 60.sp,
                                            child: Image.asset(
                                                "assets/images/burger 1.png"),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 4),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Pepperoni Pizza',
                                                      style: GoogleFonts.dmSans(
                                                          fontSize: 13.42.sp,
                                                          fontWeight:
                                                          FontWeight.w500),
                                                    ),
                                                    SizedBox(
                                                      width: 40,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        if (controller.numbers[
                                                        index] >
                                                            0) {
                                                          controller
                                                              .numbers[index]--;
                                                        }
                                                      },
                                                      child: Container(
                                                        width: 20,
                                                        height: 20,
                                                        padding:
                                                        EdgeInsets.all(4),
                                                        decoration:
                                                        BoxDecoration(
                                                          color: AppColor
                                                              .greyColor
                                                              .withOpacity(0.5),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(7),
                                                        ),
                                                        child: Image.asset(
                                                            'assets/images/minus.png'),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Obx(() {
                                                      return Text(
                                                        "${controller.numbers[index]}",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                            FontWeight
                                                                .w600),
                                                      );
                                                    }),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        controller
                                                            .numbers[index]++;
                                                      },
                                                      child: Container(
                                                        width: 20,
                                                        height: 20,
                                                        padding:
                                                        EdgeInsets.all(4),
                                                        decoration:
                                                        BoxDecoration(
                                                          color: AppColor
                                                              .redColor
                                                              .withOpacity(0.5),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(7),
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
                                                      padding: EdgeInsets.only(
                                                          top: 2),
                                                      child: Text(
                                                        'Rs.',
                                                        style:
                                                        GoogleFonts.dmSans(
                                                            fontSize: 7.sp,
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            color: AppColor
                                                                .greyColor),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 20),
                                                      child: MyText(
                                                        text: '850/',
                                                        textColor:
                                                        AppColor.redColor,
                                                        fontSize: 15.44,
                                                        fontWeight:
                                                        FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                          'Sizes',
                                                          style: GoogleFonts
                                                              .dmSans(
                                                              fontSize:
                                                              8.sp,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w400),
                                                        ),
                                                        Container(
                                                          width: 70.sp,
                                                          decoration:
                                                          BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            border: Border.all(
                                                                color: AppColor
                                                                    .greyColor),
                                                          ),
                                                          child: Theme(
                                                            data: ThemeData(
                                                                dividerColor: Colors
                                                                    .transparent),
                                                            child:
                                                            ExpansionTile(
                                                              title: Text(
                                                                '2x',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                    7.sp),
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
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                          'Others',
                                                          style: GoogleFonts
                                                              .dmSans(
                                                              fontSize:
                                                              8.sp,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w400),
                                                        ),
                                                        Container(
                                                          width: 125.sp,
                                                          decoration:
                                                          BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            border: Border.all(
                                                                color: AppColor
                                                                    .greyColor),
                                                          ),
                                                          child: Theme(
                                                            data: ThemeData(
                                                              dividerColor: Colors
                                                                  .transparent,
                                                            ),
                                                            child:
                                                            ExpansionTile(
                                                              title: Text(
                                                                'Extra Cheez Layer',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                    7.sp),
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
                                },
                                itemCount: 5,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              // ZingerBurger(),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // ZingerBurger(),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // ZingerBurger(),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // ZingerBurger(),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // ZingerBurger(),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              // ListView.builder(
                              //   itemBuilder: (context, index) {
                              //     return Padding(
                              //       padding: EdgeInsets.only(top: 20),
                              //       child: Container(
                              //         child: Row(
                              //           crossAxisAlignment:
                              //               CrossAxisAlignment.start,
                              //           children: [
                              //             Row(
                              //               children: [
                              //                 Obx(
                              //                   () {
                              //                     return Checkbox(
                              //                       value: controller
                              //                               .selectForCheckBox[
                              //                           index],
                              //                       onChanged: (value) {
                              //                         controller
                              //                                 .selectForCheckBox[
                              //                             index] = value!;
                              //                       },
                              //                       activeColor:
                              //                           AppColor.redColor,
                              //                     );
                              //                   },
                              //                 ),
                              //               ],
                              //             ),
                              //             Container(
                              //               width: 80,
                              //               height: 65,
                              //               child: Image.asset(
                              //                   'assets/images/burger 3.png'),
                              //             ).onlyPadding(top: 10),
                              //             SizedBox(
                              //               width: 2,
                              //             ),
                              //             Column(
                              //               crossAxisAlignment:
                              //                   CrossAxisAlignment.start,
                              //               children: [
                              //                 Row(
                              //                   children: [
                              //                     Text(
                              //                       "Zinger Burger",
                              //                       style: GoogleFonts.dmSans(
                              //                         fontSize: 15,
                              //                         fontWeight:
                              //                             FontWeight.w700,
                              //                       ),
                              //                     ),
                              //                     SizedBox(
                              //                       width: 80,
                              //                     ),
                              //                     GestureDetector(
                              //                       onTap: () {
                              //                         if (controller
                              //                                 .numbers[index] >
                              //                             0) {
                              //                           controller
                              //                               .numbers[index]--;
                              //                         }
                              //                       },
                              //                       child: Container(
                              //                         width: 20,
                              //                         height: 20,
                              //                         decoration: BoxDecoration(
                              //                           color: AppColor
                              //                               .greyColor
                              //                               .withOpacity(0.5),
                              //                           borderRadius:
                              //                               BorderRadius
                              //                                   .circular(5),
                              //                         ),
                              //                         child: Image.asset(
                              //                           'assets/images/minus.png',
                              //                           scale: 10,
                              //                         ),
                              //                       ),
                              //                     ),
                              //                     SizedBox(
                              //                       width: 20,
                              //                     ),
                              //                     Obx(() {
                              //                       return Text(
                              //                           '${controller.numbers[index]}');
                              //                     }),
                              //                     SizedBox(
                              //                       width: 20,
                              //                     ),
                              //                     GestureDetector(
                              //                       onTap: () {
                              //                         controller
                              //                             .numbers[index]++;
                              //                       },
                              //                       child: Container(
                              //                         width: 20,
                              //                         height: 20,
                              //                         decoration: BoxDecoration(
                              //                           color: AppColor.redColor
                              //                               .withOpacity(0.5),
                              //                           borderRadius:
                              //                               BorderRadius
                              //                                   .circular(5),
                              //                         ),
                              //                         child: Center(
                              //                             child: Icon(
                              //                           Icons.add,
                              //                           size: 15,
                              //                         )),
                              //                       ),
                              //                     ),
                              //                   ],
                              //                 ),
                              //                 SizedBox(
                              //                   height: 3,
                              //                 ),
                              //                 Stack(
                              //                   children: [
                              //                     Padding(
                              //                       padding:
                              //                           EdgeInsets.only(top: 3),
                              //                       child: Text(
                              //                         'RS.',
                              //                         style: GoogleFonts.dmSans(
                              //                           fontSize: 8,
                              //                           fontWeight:
                              //                               FontWeight.w700,
                              //                           color:
                              //                               AppColor.greyColor,
                              //                         ),
                              //                       ),
                              //                     ),
                              //                     Padding(
                              //                       padding: EdgeInsets.only(
                              //                           left: 12),
                              //                       child: Text(
                              //                         '850/',
                              //                         style: GoogleFonts.dmSans(
                              //                           fontSize: 15,
                              //                           fontWeight:
                              //                               FontWeight.w700,
                              //                           color:
                              //                               AppColor.redColor,
                              //                         ),
                              //                       ),
                              //                     )
                              //                   ],
                              //                 ),
                              //                 SizedBox(
                              //                   height: 3,
                              //                 ),
                              //                 Row(
                              //                   children: [
                              //                     Column(
                              //                       crossAxisAlignment:
                              //                           CrossAxisAlignment
                              //                               .start,
                              //                       children: [
                              //                         Text(
                              //                           'Size',
                              //                           style:
                              //                               GoogleFonts.dmSans(
                              //                                   fontSize: 8.sp),
                              //                         ),
                              //                         Container(
                              //                           width: 70.sp,
                              //                           decoration:
                              //                               BoxDecoration(
                              //                                   borderRadius:
                              //                                       BorderRadius
                              //                                           .circular(
                              //                                               10),
                              //                                   border:
                              //                                       Border.all(
                              //                                     color: AppColor
                              //                                         .greyColor,
                              //                                   )),
                              //                           child: Theme(
                              //                             data: ThemeData(
                              //                                 dividerColor: Colors
                              //                                     .transparent),
                              //                             child: ExpansionTile(
                              //                               title: Text(
                              //                                 '2x',
                              //                                 style: GoogleFonts
                              //                                     .dmSans(
                              //                                         fontSize:
                              //                                             8.sp),
                              //                               ),
                              //                               children: [
                              //                                 Text('4x',
                              //                                     style: GoogleFonts
                              //                                         .dmSans(
                              //                                             fontSize:
                              //                                                 8.sp)),
                              //                                 Text('6x',
                              //                                     style: GoogleFonts
                              //                                         .dmSans(
                              //                                             fontSize:
                              //                                                 8.sp)),
                              //                               ],
                              //                             ),
                              //                           ),
                              //                         )
                              //                       ],
                              //                     ),
                              //                     Padding(
                              //                       padding: EdgeInsets.only(
                              //                           left: 2),
                              //                       child: Column(
                              //                         crossAxisAlignment:
                              //                             CrossAxisAlignment
                              //                                 .start,
                              //                         children: [
                              //                           Text('Others',
                              //                               style: GoogleFonts
                              //                                   .dmSans(
                              //                                       fontSize:
                              //                                           8.sp)),
                              //                           Container(
                              //                             width: ScreenWidth *
                              //                                 0.43,
                              //                             decoration:
                              //                                 BoxDecoration(
                              //                                     borderRadius:
                              //                                         BorderRadius
                              //                                             .circular(
                              //                                                 10),
                              //                                     border: Border
                              //                                         .all(
                              //                                       color: AppColor
                              //                                           .greyColor,
                              //                                     )),
                              //                             child: Theme(
                              //                               data: ThemeData(
                              //                                   dividerColor: Colors
                              //                                       .transparent),
                              //                               child:
                              //                                   ExpansionTile(
                              //                                 title: Text(
                              //                                     'Extra Cheez Layer',
                              //                                     style: GoogleFonts
                              //                                         .dmSans(
                              //                                             fontSize:
                              //                                                 7.sp)),
                              //                                 children: [
                              //                                   Text('other'),
                              //                                   Text('other'),
                              //                                 ],
                              //                               ),
                              //                             ),
                              //                           )
                              //                         ],
                              //                       ),
                              //                     ),
                              //                   ],
                              //                 )
                              //               ],
                              //             )
                              //           ],
                              //         ),
                              //       ),
                              //     );
                              //   },
                              //   itemCount: 5,
                              //   shrinkWrap: true,
                              //   physics: NeverScrollableScrollPhysics(),
                              // )
                              ListView.builder(
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Container(
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Obx(() {
                                            return Checkbox(
                                              value: controller
                                                  .selectForCheckBox[index],
                                              onChanged: (value) {
                                                controller.selectForCheckBox[
                                                index] = value!;
                                              },
                                              activeColor: AppColor.redColor,
                                            );
                                          }),
                                          Container(
                                            width: 60.sp,
                                            height: 60.sp,
                                            child: Image.asset(
                                                "assets/images/spaguetti 1.png"),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 4),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Pepperoni Pizza',
                                                      style: GoogleFonts.dmSans(
                                                          fontSize: 13.42.sp,
                                                          fontWeight:
                                                          FontWeight.w500),
                                                    ),
                                                    SizedBox(
                                                      width: 40,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        if (controller.numbers[
                                                        index] >
                                                            0) {
                                                          controller
                                                              .numbers[index]--;
                                                        }
                                                      },
                                                      child: Container(
                                                        width: 20,
                                                        height: 20,
                                                        padding:
                                                        EdgeInsets.all(4),
                                                        decoration:
                                                        BoxDecoration(
                                                          color: AppColor
                                                              .greyColor
                                                              .withOpacity(0.5),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(7),
                                                        ),
                                                        child: Image.asset(
                                                            'assets/images/minus.png'),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Obx(() {
                                                      return Text(
                                                        "${controller.numbers[index]}",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                            FontWeight
                                                                .w600),
                                                      );
                                                    }),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        controller
                                                            .numbers[index]++;
                                                      },
                                                      child: Container(
                                                        width: 20,
                                                        height: 20,
                                                        padding:
                                                        EdgeInsets.all(4),
                                                        decoration:
                                                        BoxDecoration(
                                                          color: AppColor
                                                              .redColor
                                                              .withOpacity(0.5),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(7),
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
                                                      padding: EdgeInsets.only(
                                                          top: 2),
                                                      child: Text(
                                                        'Rs.',
                                                        style:
                                                        GoogleFonts.dmSans(
                                                            fontSize: 7.sp,
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            color: AppColor
                                                                .greyColor),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 20),
                                                      child: MyText(
                                                        text: '850/',
                                                        textColor:
                                                        AppColor.redColor,
                                                        fontSize: 15.44,
                                                        fontWeight:
                                                        FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                          'Sizes',
                                                          style: GoogleFonts
                                                              .dmSans(
                                                              fontSize:
                                                              8.sp,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w400),
                                                        ),
                                                        Container(
                                                          width: 70.sp,
                                                          decoration:
                                                          BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            border: Border.all(
                                                                color: AppColor
                                                                    .greyColor),
                                                          ),
                                                          child: Theme(
                                                            data: ThemeData(
                                                                dividerColor: Colors
                                                                    .transparent),
                                                            child:
                                                            ExpansionTile(
                                                              title: Text(
                                                                '2x',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                    7.sp),
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
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                          'Others',
                                                          style: GoogleFonts
                                                              .dmSans(
                                                              fontSize:
                                                              8.sp,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w400),
                                                        ),
                                                        Container(
                                                          width: 125.sp,
                                                          decoration:
                                                          BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            border: Border.all(
                                                                color: AppColor
                                                                    .greyColor),
                                                          ),
                                                          child: Theme(
                                                            data: ThemeData(
                                                              dividerColor: Colors
                                                                  .transparent,
                                                            ),
                                                            child:
                                                            ExpansionTile(
                                                              title: Text(
                                                                'Extra Cheez Layer',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                    7.sp),
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
                                },
                                itemCount: 5,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                              )
                            ],
                          ),

                        ],
                      );
                    }),

                    // ListView.builder(
                    //   itemCount: 5,
                    //   shrinkWrap: true,
                    //   itemBuilder: (context, index) {
                    //     return Padding(
                    //       padding: EdgeInsets.only(left: 5, right: 5, top: 10),
                    //       child: Container(
                    //         child: Row(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Obx(() {
                    //               return Checkbox(
                    //                 value: controller.selectedForCheckBox.value,
                    //                 onChanged: (value) {
                    //                   controller.selectedForCheckBox.value =
                    //                   value!;
                    //                 },
                    //                 activeColor: AppColor.redColor,
                    //               );
                    //             }),
                    //             Container(
                    //               width: 90,
                    //               height: 90,
                    //               child: Image.asset(
                    //                   "assets/images/kindpng_1065884 1.png"),
                    //             ),
                    //             Padding(
                    //               padding: EdgeInsets.only(left: 10),
                    //               child: Column(
                    //                 crossAxisAlignment: CrossAxisAlignment.start,
                    //                 children: [
                    //                   Row(
                    //                     children: [
                    //                       Text(
                    //                         'Pepperoni Pizza',
                    //                         style: GoogleFonts.dmSans(
                    //                             fontSize: 12,
                    //                             fontWeight: FontWeight.w500),
                    //                       ),
                    //                       SizedBox(
                    //                         width: 20,
                    //                       ),
                    //                       GestureDetector(
                    //                         onTap: () {
                    //                           controller.selectedIndex.value--;
                    //                         },
                    //                         child: Container(
                    //                           width: 20,
                    //                           height: 20,
                    //                           padding: EdgeInsets.all(4),
                    //                           decoration: BoxDecoration(
                    //                             color: AppColor.greyColor,
                    //                             borderRadius:
                    //                             BorderRadius.circular(7),
                    //                           ),
                    //                           child: Image.asset(
                    //                               'assets/images/minus.png'),
                    //                         ),
                    //                       ),
                    //                       SizedBox(
                    //                         width: 20,
                    //                       ),
                    //                       Obx(() {
                    //                         return Text(
                    //                           "${controller.selectedIndex.value}",
                    //                           style: TextStyle(
                    //                               fontSize: 18,
                    //                               fontWeight: FontWeight.w600),
                    //                         );
                    //                       }),
                    //                       SizedBox(
                    //                         width: 20,
                    //                       ),
                    //                       GestureDetector(
                    //                         onTap: () {
                    //                           controller.selectedIndex.value++;
                    //                         },
                    //                         child: Container(
                    //                           width: 20,
                    //                           height: 20,
                    //                           padding: EdgeInsets.all(4),
                    //                           decoration: BoxDecoration(
                    //                             color: AppColor.redColor,
                    //                             borderRadius:
                    //                             BorderRadius.circular(7),
                    //                           ),
                    //                           child: Image.asset(
                    //                               'assets/images/minus.png'),
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                   Stack(
                    //                     children: [
                    //                       Padding(
                    //                         padding: EdgeInsets.only(top: 2),
                    //                         child: MyText(
                    //                           text: 'RS.',
                    //                           textColor: AppColor.moreDarkGrey,
                    //                           fontSize: 8.13,
                    //                         ),
                    //                       ),
                    //                       Padding(
                    //                         padding: EdgeInsets.only(left: 10),
                    //                         child: MyText(
                    //                           text: '850',
                    //                           textColor: AppColor.redColor,
                    //                           fontSize: 15.44,
                    //                           fontWeight: FontWeight.w600,
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                   Row(
                    //                     children: [
                    //                       MyText(
                    //                         text: 'Sizes',
                    //                         fontSize: 9.16,
                    //                       ),
                    //                       SizedBox(
                    //                         width: 140,
                    //                       ),
                    //                       MyText(
                    //                         text: 'Other',
                    //                         fontSize: 9.16,
                    //                       ),
                    //                     ],
                    //                   ),
                    //                   Row(
                    //                     children: [
                    //                       Container(
                    //                         width: ScreenWidth * 0.3,
                    //                         decoration: BoxDecoration(
                    //                           borderRadius:
                    //                           BorderRadius.circular(10),
                    //                           border: Border.all(
                    //                               color: AppColor.greyColor),
                    //                         ),
                    //                         child: ExpansionTile(
                    //                           title: Text('2x'),
                    //                           children: [
                    //                             MyText(
                    //                               text: '4x',
                    //                             ),
                    //                             MyText(
                    //                               text: '6x',
                    //                             ),
                    //                           ],
                    //                         ),
                    //                       ),
                    //                       SizedBox(
                    //                         width: 5,
                    //                       ),
                    //                       Container(
                    //                         width: ScreenWidth * 0.37,
                    //                         decoration: BoxDecoration(
                    //                             borderRadius:
                    //                             BorderRadius.circular(10),
                    //                             border: Border.all(
                    //                                 color: AppColor.greyColor)),
                    //                         child: ExpansionTile(
                    //                           title: Text(
                    //                             'Extra Cheez Layer',
                    //                             style: TextStyle(fontSize: 12),
                    //                           ),
                    //                           children: [
                    //                             MyText(
                    //                               text: '4x',
                    //                             ),
                    //                             MyText(
                    //                               text: '6x',
                    //                             ),
                    //                           ],
                    //                         ),
                    //                       )
                    //                     ],
                    //                   )
                    //                 ],
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     );
                    //   },
                    // ),

                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 30, top: 30),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(CustomerOrderScreen());
                        },
                        child: Container(
                          width: ScreenWidth * 0.93,
                          height: 55.sp,
                          decoration: BoxDecoration(
                            color: AppColor.redColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  '(1) Items',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.whiteColor),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Text(
                                  'Add to bill',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: AppColor.whiteColor),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
