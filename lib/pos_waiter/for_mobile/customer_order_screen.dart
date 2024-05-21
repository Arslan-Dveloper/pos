import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/controller/app_controller.dart';
import 'package:sizer/sizer.dart';
import '../../custom_widget/my_custom_widget.dart';
import '../../helper/constant.dart';

class CustomerOrderScreen extends StatelessWidget {
  const CustomerOrderScreen({Key? key}) : super(key: key);

  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;

    var controller = Get.put(AppController());
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: ScreenWidth * 0.7,
              child: Image.asset("assets/images/Background shape.png"),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          'Customer Order',
                          style: GoogleFonts.dmSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                  // ListView.builder(
                  //   itemBuilder: (context, index) {
                  //     return Padding(
                  //       padding: EdgeInsets.only(top: 20,left: 20),
                  //       child: Container(
                  //         child: Row(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             Container(
                  //               child: Image.asset(
                  //                   'assets/images/Icon.delete.png'),
                  //               width: 13.sp,
                  //               height: 18.sp,
                  //               decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(5),
                  //                 color: AppColor.redColor.withOpacity(0.3),
                  //               ),
                  //               padding: EdgeInsets.all(2),
                  //             ),
                  //             Container(
                  //               width: 60.sp,
                  //               height: 60.sp,
                  //               child: Image.asset(
                  //                   "${controller.customerOrderScreen[index]}"),
                  //             ),
                  //             Padding(
                  //               padding: EdgeInsets.only(left: 4),
                  //               child: Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   Row(
                  //                     children: [
                  //                       Text(
                  //                         '${controller.customerOrderScreenText[index]}',
                  //                         style: GoogleFonts.dmSans(
                  //                             fontSize: 13.42.sp,
                  //                             fontWeight: FontWeight.w500),
                  //                       ),
                  //                       SizedBox(
                  //                         width: 40,
                  //                       ),
                  //                       GestureDetector(
                  //                         onTap: () {
                  //                           if (controller.numbers[index] > 0) {
                  //                             controller.numbers[index]--;
                  //                           }
                  //                         },
                  //                         child: Container(
                  //                           width: 20,
                  //                           height: 20,
                  //                           padding: EdgeInsets.all(4),
                  //                           decoration: BoxDecoration(
                  //                             color: AppColor.greyColor
                  //                                 .withOpacity(0.5),
                  //                             borderRadius:
                  //                                 BorderRadius.circular(7),
                  //                           ),
                  //                           child: Image.asset(
                  //                               'assets/images/minus.png'),
                  //                         ),
                  //                       ),
                  //                       SizedBox(
                  //                         width: 15,
                  //                       ),
                  //                       Obx(() {
                  //                         return Text(
                  //                           "${controller.numbers[index]}",
                  //                           style: TextStyle(
                  //                               fontSize: 18,
                  //                               fontWeight: FontWeight.w600),
                  //                         );
                  //                       }),
                  //                       SizedBox(
                  //                         width: 15,
                  //                       ),
                  //                       GestureDetector(
                  //                         onTap: () {
                  //                           controller.numbers[index]++;
                  //                         },
                  //                         child: Container(
                  //                           width: 20,
                  //                           height: 20,
                  //                           padding: EdgeInsets.all(4),
                  //                           decoration: BoxDecoration(
                  //                             color: AppColor.redColor
                  //                                 .withOpacity(0.5),
                  //                             borderRadius:
                  //                                 BorderRadius.circular(7),
                  //                           ),
                  //                           child: Center(
                  //                             child: Icon(
                  //                               Icons.add,
                  //                               size: 12,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                   Stack(
                  //                     children: [
                  //                       Padding(
                  //                         padding: EdgeInsets.only(top: 2),
                  //                         child: Text(
                  //                           'Rs.',
                  //                           style: GoogleFonts.dmSans(
                  //                               fontSize: 7.sp,
                  //                               fontWeight: FontWeight.w700,
                  //                               color: AppColor.greyColor),
                  //                         ),
                  //                       ),
                  //                       Padding(
                  //                         padding: EdgeInsets.only(left: 20),
                  //                         child: MyText(
                  //                           text: '850/',
                  //                           textColor: AppColor.redColor,
                  //                           fontSize: 15.44,
                  //                           fontWeight: FontWeight.w600,
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                   Row(
                  //                     children: [
                  //                       Column(
                  //                         crossAxisAlignment:
                  //                             CrossAxisAlignment.start,
                  //                         children: [
                  //                           Text(
                  //                             'Sizes',
                  //                             style: GoogleFonts.dmSans(
                  //                                 fontSize: 8.sp,
                  //                                 fontWeight: FontWeight.w400),
                  //                           ),
                  //                           Container(
                  //                             width: 70.sp,
                  //                             decoration: BoxDecoration(
                  //                               borderRadius:
                  //                                   BorderRadius.circular(10),
                  //                               border: Border.all(
                  //                                   color: AppColor.greyColor),
                  //                             ),
                  //                             child: Theme(
                  //                               data: ThemeData(
                  //                                   dividerColor:
                  //                                       Colors.transparent),
                  //                               child: ExpansionTile(
                  //                                 title: Text(
                  //                                   '2x',
                  //                                   style: TextStyle(
                  //                                       fontSize: 7.sp),
                  //                                 ),
                  //                                 children: [
                  //                                   MyText(
                  //                                     text: '4x',
                  //                                   ),
                  //                                   MyText(
                  //                                     text: '6x',
                  //                                   ),
                  //                                 ],
                  //                               ),
                  //                             ),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                       SizedBox(
                  //                         width: 2,
                  //                       ),
                  //                       Column(
                  //                         crossAxisAlignment:
                  //                             CrossAxisAlignment.start,
                  //                         children: [
                  //                           Text(
                  //                             'Others',
                  //                             style: GoogleFonts.dmSans(
                  //                                 fontSize: 8.sp,
                  //                                 fontWeight: FontWeight.w400),
                  //                           ),
                  //                           Container(
                  //                             width: 125.sp,
                  //                             decoration: BoxDecoration(
                  //                               borderRadius:
                  //                                   BorderRadius.circular(10),
                  //                               border: Border.all(
                  //                                   color: AppColor.greyColor),
                  //                             ),
                  //                             child: Theme(
                  //                               data: ThemeData(
                  //                                 dividerColor:
                  //                                     Colors.transparent,
                  //                               ),
                  //                               child: ExpansionTile(
                  //                                 title: Text(
                  //                                   'Extra Cheez Layer',
                  //                                   style: TextStyle(
                  //                                       fontSize: 7.sp),
                  //                                 ),
                  //                                 children: [
                  //                                   MyText(
                  //                                     text: '4x',
                  //                                   ),
                  //                                   MyText(
                  //                                     text: '6x',
                  //                                   ),
                  //                                 ],
                  //                               ),
                  //                             ),
                  //                           )
                  //                         ],
                  //                       ),
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
                  //   itemCount: controller.customerOrderScreen.length,
                  //   shrinkWrap: true,
                  //   physics: NeverScrollableScrollPhysics(),
                  // ),
                  // Column(
                  //   children: [
                  //     ListView.builder(
                  //       itemCount: 4,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
                  //       itemBuilder: (context, index) {
                  //         return Padding(
                  //           padding: EdgeInsets.only(left: 7, top: 20, right: 7),
                  //           child: Container(
                  //             child: Row(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Container(
                  //                   child: Image.asset(
                  //                       'assets/images/Icon.delete.png'),
                  //                   width: 13.sp,
                  //                   height: 18.sp,
                  //                   decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.circular(5),
                  //                     color: AppColor.redColor.withOpacity(0.3),
                  //                   ),
                  //                   padding: EdgeInsets.all(2),
                  //                 ),
                  //                 Container(
                  //                   width: 60.sp,
                  //                   height: 60.sp,
                  //                   child: Image.asset(
                  //                       'assets/images/kindpng_1065884 1.png'),
                  //                 ),
                  //                 SizedBox(
                  //                   width: 5,
                  //                 ),
                  //                 Column(
                  //                   crossAxisAlignment: CrossAxisAlignment.start,
                  //                   children: [
                  //                     Row(
                  //                       children: [
                  //                         Text(
                  //                           "Pepperoni Pizza",
                  //                           style: GoogleFonts.dmSans(
                  //                             fontSize: 15,
                  //                             fontWeight: FontWeight.w700,
                  //                           ),
                  //                         ),
                  //                         SizedBox(
                  //                           width: 50,
                  //                         ),
                  //                         GestureDetector(
                  //                           onTap: () {
                  //                             if (controller.customerIndex.value >
                  //                                 0) {
                  //                               controller.customerIndex.value--;
                  //                             }
                  //                           },
                  //                           child: Container(
                  //                             width: 20,
                  //                             height: 20,
                  //                             decoration: BoxDecoration(
                  //                               color: AppColor.greyColor
                  //                                   .withOpacity(0.5),
                  //                               borderRadius:
                  //                                   BorderRadius.circular(5),
                  //                             ),
                  //                             child: Image.asset(
                  //                               'assets/images/minus.png',
                  //                               scale: 10,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(
                  //                           width: 30,
                  //                         ),
                  //                         Obx(() {
                  //                           return Text(
                  //                             "${controller.customerIndex.value}",
                  //                             style: GoogleFonts.dmSans(
                  //                               fontWeight: FontWeight.w400,
                  //                             ),
                  //                           );
                  //                         }),
                  //                         SizedBox(
                  //                           width: 30,
                  //                         ),
                  //                         GestureDetector(
                  //                           onTap: () {
                  //                             controller.customerIndex.value++;
                  //                           },
                  //                           child: Container(
                  //                             width: 20,
                  //                             height: 20,
                  //                             decoration: BoxDecoration(
                  //                               color: AppColor.redColor
                  //                                   .withOpacity(0.5),
                  //                               borderRadius:
                  //                                   BorderRadius.circular(5),
                  //                             ),
                  //                             child: Center(
                  //                                 child: Icon(
                  //                               Icons.add,
                  //                               size: 15,
                  //                             )),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                     SizedBox(
                  //                       height: 7,
                  //                     ),
                  //                     Stack(
                  //                       children: [
                  //                         Padding(
                  //                           padding: EdgeInsets.only(top: 3),
                  //                           child: Text(
                  //                             'RS.',
                  //                             style: GoogleFonts.dmSans(
                  //                               fontSize: 8,
                  //                               fontWeight: FontWeight.w700,
                  //                               color: AppColor.greyColor,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         Padding(
                  //                           padding: EdgeInsets.only(left: 12),
                  //                           child: Text(
                  //                             '850/',
                  //                             style: GoogleFonts.dmSans(
                  //                               fontSize: 15,
                  //                               fontWeight: FontWeight.w700,
                  //                               color: AppColor.redColor,
                  //                             ),
                  //                           ),
                  //                         )
                  //                       ],
                  //                     ),
                  //                     Row(
                  //                       children: [
                  //                         Column(
                  //                           crossAxisAlignment:
                  //                               CrossAxisAlignment.start,
                  //                           children: [
                  //                             Text(
                  //                               'Size',
                  //                               style: GoogleFonts.dmSans(
                  //                                   fontSize: 9.sp),
                  //                             ),
                  //                             Container(
                  //                               width: 100,
                  //                               decoration: BoxDecoration(
                  //                                   borderRadius:
                  //                                       BorderRadius.circular(10),
                  //                                   border: Border.all(
                  //                                     color: AppColor.greyColor,
                  //                                   )),
                  //                               child: Theme(
                  //                                 data: ThemeData(
                  //                                     dividerColor:
                  //                                         Colors.transparent),
                  //                                 child: ExpansionTile(
                  //                                   title: Text('2x',
                  //                                       style: GoogleFonts.dmSans(
                  //                                           fontSize: 7.sp)),
                  //                                   children: [
                  //                                     Text('4x'),
                  //                                     Text('6x'),
                  //                                   ],
                  //                                 ),
                  //                               ),
                  //                             )
                  //                           ],
                  //                         ),
                  //                         SizedBox(
                  //                           width: 2,
                  //                         ),
                  //                         Column(
                  //                           crossAxisAlignment:
                  //                               CrossAxisAlignment.start,
                  //                           children: [
                  //                             Text('Others',
                  //                                 style: GoogleFonts.dmSans(
                  //                                     fontSize: 9.sp)),
                  //                             Container(
                  //                               width: ScreenWidth * 0.45,
                  //                               decoration: BoxDecoration(
                  //                                   borderRadius:
                  //                                       BorderRadius.circular(10),
                  //                                   border: Border.all(
                  //                                     color: AppColor.greyColor,
                  //                                   )),
                  //                               child: Theme(
                  //                                 data: ThemeData(
                  //                                     dividerColor:
                  //                                         Colors.transparent),
                  //                                 child: ExpansionTile(
                  //                                   title: Text('Extra Cheez Layer',
                  //                                       style: GoogleFonts.dmSans(
                  //                                           fontSize: 8.sp)),
                  //                                   children: [
                  //                                     Text('other'),
                  //                                     Text('other'),
                  //                                   ],
                  //                                 ),
                  //                               ),
                  //                             )
                  //                           ],
                  //                         )
                  //                       ],
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //         );
                  //       },
                  //     ),
                  //   ],
                  // ),
                  Padding(
                    padding: EdgeInsets.only(left: 7, right: 3,top: 20),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset('assets/images/Icon.delete.png'),
                            width: 13.sp,
                            height: 18.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.redColor.withOpacity(0.3),
                            ),
                            padding: EdgeInsets.all(2),
                          ),
                          Container(
                            width: 70.sp,
                            height: 70.sp,
                            child: Image.asset('assets/images/kindpng.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Lasani Pasta",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 65,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (controller.selectedIndex.value >
                                          0) {
                                        controller.selectedIndex.value--;
                                      }
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color:
                                        AppColor.greyColor.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Image.asset(
                                        'assets/images/minus.png',
                                        scale: 10,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Obx(() {
                                    return Text(
                                      "${controller.selectedIndex.value}",
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    );
                                  }),
                                  SizedBox(
                                    width: 33,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.selectedIndex.value++;
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color:
                                        AppColor.redColor.withOpacity(0.5),
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
                                height: 7,
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
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text('Size',
                                          style: GoogleFonts.dmSans(
                                              fontSize: 8.sp)),
                                      Container(
                                        width: 70.sp,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            border: Border.all(
                                              color: AppColor.greyColor,
                                            )),
                                        child: Theme(
                                          data: ThemeData(
                                              dividerColor: Colors.transparent),
                                          child: ExpansionTile(
                                            title: Text('2x',
                                                style: GoogleFonts.dmSans(
                                                    fontSize: 7.sp)),
                                            children: [
                                              Text('4x'),
                                              Text('6x'),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text('Others',
                                          style: GoogleFonts.dmSans(
                                              fontSize: 9.sp)),
                                      Container(
                                        width: ScreenWidth * 0.44,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            border: Border.all(
                                              color: AppColor.greyColor,
                                            )),
                                        child: ExpansionTile(
                                          title: Text('Extra Cheez Layer',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 7.sp)),
                                          children: [
                                            Text('other'),
                                            Text('other'),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7, right: 3),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset('assets/images/Icon.delete.png'),
                            width: 13.sp,
                            height: 18.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.redColor.withOpacity(0.3),
                            ),
                            padding: EdgeInsets.all(2),
                          ),
                          Container(
                            width: 70.sp,
                            height: 70.sp,
                            child: Image.asset('assets/images/kindpng_1065884 1.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Pepperoni Pizza",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 47
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (controller.selectedIndexTwo.value >
                                          0) {
                                        controller.selectedIndexTwo.value--;
                                      }
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color:
                                            AppColor.greyColor.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Image.asset(
                                        'assets/images/minus.png',
                                        scale: 10,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Obx(() {
                                    return Text(
                                      "${controller.selectedIndexTwo.value}",
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    );
                                  }),
                                  SizedBox(
                                    width: 33,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.selectedIndexTwo.value++;
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color:
                                            AppColor.redColor.withOpacity(0.5),
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
                                height: 7,
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
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Size',
                                          style: GoogleFonts.dmSans(
                                              fontSize: 8.sp)),
                                      Container(
                                        width: 70.sp,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: AppColor.greyColor,
                                            )),
                                        child: Theme(
                                          data: ThemeData(
                                              dividerColor: Colors.transparent),
                                          child: ExpansionTile(
                                            title: Text('2x',
                                                style: GoogleFonts.dmSans(
                                                    fontSize: 7.sp)),
                                            children: [
                                              Text('4x'),
                                              Text('6x'),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Others',
                                          style: GoogleFonts.dmSans(
                                              fontSize: 9.sp)),
                                      Container(
                                        width: ScreenWidth * 0.44,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: AppColor.greyColor,
                                            )),
                                        child: ExpansionTile(
                                          title: Text('Extra Cheez Layer',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 7.sp)),
                                          children: [
                                            Text('other'),
                                            Text('other'),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7, right: 3),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset('assets/images/Icon.delete.png'),
                            width: 13.sp,
                            height: 18.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.redColor.withOpacity(0.3),
                            ),
                            padding: EdgeInsets.all(2),
                          ),
                          Container(
                            width: 70.sp,
                            height: 70.sp,
                            child: Image.asset('assets/images/burger two.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Zinger Special",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 56,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (controller.selectedIndexThree.value >
                                          0) {
                                        controller.selectedIndexThree.value--;
                                      }
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color:
                                        AppColor.greyColor.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Image.asset(
                                        'assets/images/minus.png',
                                        scale: 10,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Obx(() {
                                    return Text(
                                      "${controller.selectedIndexThree.value}",
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    );
                                  }),
                                  SizedBox(
                                    width: 33,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.selectedIndexThree.value++;
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color:
                                        AppColor.redColor.withOpacity(0.5),
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
                                height: 7,
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
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text('Size',
                                          style: GoogleFonts.dmSans(
                                              fontSize: 8.sp)),
                                      Container(
                                        width: 70.sp,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            border: Border.all(
                                              color: AppColor.greyColor,
                                            )),
                                        child: Theme(
                                          data: ThemeData(
                                              dividerColor: Colors.transparent),
                                          child: ExpansionTile(
                                            title: Text('2x',
                                                style: GoogleFonts.dmSans(
                                                    fontSize: 7.sp)),
                                            children: [
                                              Text('4x'),
                                              Text('6x'),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text('Others',
                                          style: GoogleFonts.dmSans(
                                              fontSize: 9.sp)),
                                      Container(
                                        width: ScreenWidth * 0.44,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            border: Border.all(
                                              color: AppColor.greyColor,
                                            )),
                                        child: ExpansionTile(
                                          title: Text('Extra Cheez Layer',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 7.sp)),
                                          children: [
                                            Text('other'),
                                            Text('other'),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7, right: 3),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset('assets/images/Icon.delete.png'),
                            width: 13.sp,
                            height: 18.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.redColor.withOpacity(0.3),
                            ),
                            padding: EdgeInsets.all(2),
                          ),
                          Container(
                            width: 70.sp,
                            height: 70.sp,
                            child: Image.asset('assets/images/cup.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Nescafe 3x Hot",
                                    style: GoogleFonts.dmSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 53,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (controller.selectedIndexFour.value >
                                          0) {
                                        controller.selectedIndexFour.value--;
                                      }
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color:
                                        AppColor.greyColor.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Image.asset(
                                        'assets/images/minus.png',
                                        scale: 10,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Obx(() {
                                    return Text(
                                      "${controller.selectedIndexFour.value}",
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    );
                                  }),
                                  SizedBox(
                                    width: 33,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.selectedIndexFour.value++;
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color:
                                        AppColor.redColor.withOpacity(0.5),
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
                                height: 7,
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
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text('Size',
                                          style: GoogleFonts.dmSans(
                                              fontSize: 8.sp)),
                                      Container(
                                        width: 70.sp,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            border: Border.all(
                                              color: AppColor.greyColor,
                                            )),
                                        child: Theme(
                                          data: ThemeData(
                                              dividerColor: Colors.transparent),
                                          child: ExpansionTile(
                                            title: Text('2x',
                                                style: GoogleFonts.dmSans(
                                                    fontSize: 7.sp)),
                                            children: [
                                              Text('4x'),
                                              Text('6x'),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text('Others',
                                          style: GoogleFonts.dmSans(
                                              fontSize: 9.sp)),
                                      Container(
                                        width: ScreenWidth * 0.44,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            border: Border.all(
                                              color: AppColor.greyColor,
                                            )),
                                        child: ExpansionTile(
                                          title: Text('Extra Cheez Layer',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 7.sp)),
                                          children: [
                                            Text('other'),
                                            Text('other'),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Customer Phone Number',
                      style: GoogleFonts.dmSans(
                        fontSize: 14.45,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 55,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: AppColor.phoneNumberColor,
                        filled: true,
                        hintText: "+92 3080801585",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Table Number',
                      style: GoogleFonts.dmSans(
                        fontSize: 14.45,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 55,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: AppColor.phoneNumberColor,
                        filled: true,
                        hintText: "# 25",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Area',
                      style: GoogleFonts.dmSans(
                        fontSize: 14.45,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: ScreenWidth * 0.93,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: AppColor.phoneNumberColor, width: 2)),
                      child: ExpansionTile(
                        shape: Border.all(
                          color: AppColor.phoneNumberColor,
                        ),
                        title: Text('Hall'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Sub Total',
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 230,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Rs',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.greyColor),
                              ),
                              TextSpan(
                                text: ' 2900',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Tax',
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 290,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Rs',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.greyColor),
                              ),
                              TextSpan(
                                text: ' 150',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Discount',
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 240,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Rs',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.greyColor),
                              ),
                              TextSpan(
                                text: ' 200',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    endIndent: 30,
                    indent: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Total',
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 260,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Rs',
                                style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.greyColor),
                              ),
                              TextSpan(
                                text: ' 2850',
                                style: GoogleFonts.dmSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 30),
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: ScreenWidth * 0.90,
                        height: 50.sp,
                        decoration: BoxDecoration(
                          color: AppColor.redColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Center(
                            child: Text(
                              'Book now',
                              style: GoogleFonts.dmSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.whiteColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
