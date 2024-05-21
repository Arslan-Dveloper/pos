import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pos/extention/padding_extention.dart';

import '../../helper/constant.dart';

class order extends StatelessWidget {
  String? textOrderType;
  String? textIndicator;
  Color? indicatorProgressColor;
  double? persent;

  order({
    this.textOrderType,
    this.textIndicator,
    this.indicatorProgressColor,
    this.persent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "#15475",
          style: GoogleFonts.dmSans().copyWith(
            fontSize: 20,
          ),
        ),
        SizedBox(
          width: 85,
        ),
        Row(
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: AppColor.greenColor,
                  borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Active",
              style: GoogleFonts.dmSans()
                  .copyWith(fontSize: 20, color: AppColor.redColor),
            ),
          ],
        ),
        SizedBox(
          width: 70,
        ),
        Stack(
          children: [
            Container(
              width: 30,
              height: 30,
              child: Image.asset("assets/images/customer.png"),
            ).onlyPadding(top: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Muhammad Ali",
                  style: GoogleFonts.dmSans()
                      .copyWith(fontSize: 20, color: AppColor.redColor),
                ),
                Text(
                  "Customer",
                  style: GoogleFonts.dmSans()
                      .copyWith(fontSize: 16, color: AppColor.greyColor),
                ),
              ],
            ).onlyPadding(left: 45)
          ],
        ),
        SizedBox(
          width: 60,
        ),
        LinearPercentIndicator(
          lineHeight: 12,
          width: 170,
          percent: persent ?? 0.0,
          barRadius: Radius.circular(20),
          backgroundColor: AppColor.indicatorColor,
          progressColor: indicatorProgressColor,
          trailing: Text('${textIndicator}'),
          animation: true,
          animationDuration: 700,
        ),
        SizedBox(
          width: 165,
        ),
        Row(
          children: [
            Container(
              width: 26,
              height: 26,
              child: Image.asset('assets/images/ion_alarm.png'),
            ),
            SizedBox(width: 5,),
            Text(
              '15-20 min',
              style: dmSansFont.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: AppColor.greyColor),
            )
          ],
        ),
        SizedBox(
          width: 105,
        ),
        Text(
          '$textOrderType',
          style: dmSansFont.copyWith(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
