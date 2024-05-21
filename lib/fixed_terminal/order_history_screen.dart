import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pos/extention/padding_extention.dart';
import 'package:pos/helper/constant.dart';

import 'custom/custom_order.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(top: 49, left: 46),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order In Progress',
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
                    ),
                  ),
                  SizedBox(
                    height: 67,
                  ),
                  Row(
                    children: [
                      Text(
                        'Order ID',
                        style: GoogleFonts.dmSans().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColor.greyColor),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        'Status',
                        style: GoogleFonts.dmSans().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColor.greyColor),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        'Customer',
                        style: GoogleFonts.dmSans().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColor.greyColor),
                      ),
                      SizedBox(
                        width: 170,
                      ),
                      Text(
                        'Progress',
                        style: GoogleFonts.dmSans().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColor.greyColor),
                      ),
                      SizedBox(
                        width: 270,
                      ),
                      Text(
                        'Time',
                        style: GoogleFonts.dmSans().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColor.greyColor),
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Text(
                        'Order Type',
                        style: GoogleFonts.dmSans().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: AppColor.greyColor),
                      ),
                    ],
                  ),
                  Divider(
                    endIndent: 30,
                  ),
                  order(
                    persent: 0.35,
                    textOrderType: "On Table",
                    textIndicator: "35%",
                  ),
                  Divider(
                    endIndent: 30,
                  ),
                  order(
                    persent: 0.48,
                    textOrderType: "Parcel",
                    textIndicator: "48%",
                    indicatorProgressColor: AppColor.yellowColor,
                  ),
                  Divider(
                    endIndent: 30,
                  ),
                  order(
                    persent: 0.9,
                    textOrderType: "Parcel",
                    textIndicator: "92%",
                    indicatorProgressColor: AppColor.greenColor,
                  ),
                  Divider(
                    endIndent: 30,
                  ),
                  order(
                    persent: 0.47,
                    textOrderType: "On Table",
                    textIndicator: "47%",
                    indicatorProgressColor: AppColor.yellowColor,
                  ),
                  Divider(
                    endIndent: 30,
                  ),
                  order(
                    persent: 0.62,
                    textOrderType: "Parcel",
                    textIndicator: "62%",
                    indicatorProgressColor: AppColor.greenColor,
                  ),
                  Divider(
                    endIndent: 30,
                  ),
                  order(
                    persent: 0.35,
                    textOrderType: "Parcel",
                    textIndicator: "35%",
                    indicatorProgressColor: AppColor.redColor,
                  ),
                  Divider(
                    endIndent: 30,
                  ),
                  order(
                    persent: 0.52,
                    textOrderType: "On Table",
                    textIndicator: "52%",
                    indicatorProgressColor: AppColor.yellowColor,
                  ),
                  Divider(
                    endIndent: 30,
                  ),
                  order(
                    persent: 0.59,
                    textOrderType: "Parcel",
                    textIndicator: "59%",
                    indicatorProgressColor: AppColor.yellowColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
