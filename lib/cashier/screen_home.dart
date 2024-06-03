import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/custom_widget/my_custom_widget.dart';
import 'package:pos/extention/padding_extention.dart';
import 'package:pos/helper/constant.dart';
import 'package:sizer/sizer.dart';

import '../custom_widget/custom_app_bar.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                CustomAppBar(
                  actionList: [
                    Container(
                      width: 200,
                      child: ListTile(
                        leading: Container(
                          width: 18.sp,
                          height: 18.sp,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/cashier image.png"),
                            ),
                          ),
                        ),
                        title: Text(
                          'Katie Pena',
                          style: interFont.copyWith(
                            fontSize: 7.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: Text(
                          'Cashier',
                          style: interFont.copyWith(
                              fontSize: 7.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColor.cashierGreyColor),
                        ),
                      ),
                    )
                  ],
                  borderShape: Border(
                    bottom: BorderSide(
                        color: AppColor.cashierBorderColor, width: 1),
                  ),
                  tollBarHeight: 80,
                  // flexibleSpace: ListTile(
                  //   leading: Container(
                  //     width: 18.sp,
                  //     height: 18.sp,
                  //     decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //         image: AssetImage("assets/images/cashier image.png"),
                  //       ),
                  //     ),
                  //   ),
                  //   title: Text(
                  //     'Katie Pena',
                  //     style: interFont.copyWith(
                  //       fontSize: 7.sp,
                  //       fontWeight: FontWeight.w700,
                  //     ),
                  //   ),
                  //   subtitle:Text(
                  //     'Cashier',
                  //     style: interFont.copyWith(
                  //         fontSize: 7.sp,
                  //         fontWeight: FontWeight.w500,
                  //         color: AppColor.cashierGreyColor),
                  //   ) ,
                  // ),
                ),
                Container(
                  width: 300,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    border: Border(
                      right: BorderSide(
                        color: AppColor.cashierBorderColor,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 40.sp,
                        height: 40.sp,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                            AssetImage("assets/images/cashier logo.png"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 300,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
