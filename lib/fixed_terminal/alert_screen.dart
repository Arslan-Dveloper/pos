import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pos/helper/constant.dart';
import 'custom/custom_alert.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(left: 46, top: 49),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alert ! Time is almost coming completed.',
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
                    height: 35,
                  ),
                  Row(
                    children: [
                      Text(
                        'Order ID.',
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        'Customer name',
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Text(
                        'Status',
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Text(
                        'Area',
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 124,
                      ),
                      Text(
                        'Table',
                        style: GoogleFonts.dmSans().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 88,
                      ),
                      Text(
                        'Progress',
                        style: GoogleFonts.dmSans().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    endIndent: 100,
                  ),
                  SizedBox(height: 15,),
                  CustomAlert(
                    containerColor: AppColor.greenColor,
                    customerName: "Muhammad Ali",
                    progressIndicatorColor: AppColor.greenColor,
                    persent: 0.9,indicatorText: "96%",containerText: "Almost complet",
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    endIndent: 100,
                  ),
                  SizedBox(height: 15,),
                  CustomAlert(
                    containerColor: AppColor.greenColor,
                    customerName: "Muhammad Ali",
                    progressIndicatorColor: AppColor.greenColor,
                    persent: 0.9,indicatorText: "96%",containerText: "Almost complet",
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    endIndent: 100,
                  ),
                  SizedBox(height: 15,),
                  CustomAlert(
                    containerColor: AppColor.redColor,
                    customerName: "Rizwan khan    ",
                    progressIndicatorColor: AppColor.redColor,
                    persent: 1.0,indicatorText: "100%",containerText: " Harry up! Late ",
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    endIndent: 100,
                  ),

                  SizedBox(height: 15,),
                  CustomAlert(
                    containerColor: AppColor.greenColor,
                    customerName: "Muhammad Ali",
                    progressIndicatorColor: AppColor.greenColor,
                    persent: 0.9,indicatorText: "96%",containerText: "Almost complet",
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    endIndent: 100,
                  ),
                  SizedBox(height: 15,),
                  CustomAlert(
                    containerColor: AppColor.greenColor,
                    customerName: "Muhammad Ali",
                    progressIndicatorColor: AppColor.greenColor,
                    persent: 0.9,indicatorText: "96%",containerText: "Almost complet",
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    endIndent: 100,
                  ),
                  SizedBox(height: 15,),
                  CustomAlert(
                    containerColor: AppColor.greenColor,
                    customerName: "Muhammad Ali",
                    progressIndicatorColor: AppColor.greenColor,
                    persent: 0.9,indicatorText: "96%",containerText: "Almost complet",
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    endIndent: 100,
                  ),
                  SizedBox(height: 15,),
                  CustomAlert(
                    containerColor: AppColor.greenColor,
                    customerName: "Muhammad Ali",
                    progressIndicatorColor: AppColor.greenColor,
                    persent: 0.9,indicatorText: "96%",containerText: "Almost complet",
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    endIndent: 100,
                  ),
                  SizedBox(height: 15,),
                  CustomAlert(
                    containerColor: AppColor.greenColor,
                    customerName: "Muhammad Ali",
                    progressIndicatorColor: AppColor.greenColor,
                    persent: 0.9,indicatorText: "96%",containerText: "Almost complet",
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
