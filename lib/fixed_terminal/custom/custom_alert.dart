import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../helper/constant.dart';

class CustomAlert extends StatelessWidget {
  String? customerName;
  String? indicatorText;
  String? containerText;
  Color? containerColor;
  Color? progressIndicatorColor;
  double? persent;

  CustomAlert({
    this.customerName,
    this.containerColor,
    this.progressIndicatorColor,
    this.persent,
    this.indicatorText,this.containerText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "#CR0001",
          style: GoogleFonts.inter().copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
        SizedBox(
          width: 80,
        ),
        Text(
          "${customerName}",
          style: GoogleFonts.inter().copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
        SizedBox(
          width: 80,
        ),
        Container(
          padding: EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
          decoration: BoxDecoration(
              color: containerColor, borderRadius: BorderRadius.circular(5)),
          child: Text(
            "${containerText}",
            style: GoogleFonts.inter().copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColor.whiteColor,
            ),
          ),
        ),
        SizedBox(
          width: 112,
        ),
        Text(
          "Room no 1",
          style: GoogleFonts.inter().copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
        SizedBox(
          width: 90,
        ),
        Text(
          "06",
          style: GoogleFonts.inter().copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
        SizedBox(
          width: 90,
        ),
        LinearPercentIndicator(
          lineHeight: 16,
          width: 280,
          percent: persent ?? 0,
          barRadius: Radius.circular(20),
          backgroundColor: AppColor.indicatorColor,
          animation: true,
          animationDuration: 700,
          progressColor: progressIndicatorColor,
          trailing: Text(
            "${indicatorText}",
            style: GoogleFonts.inter().copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: AppColor.greyColor),
          ),
        ),
      ],
    );
  }
}
