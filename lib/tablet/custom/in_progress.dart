import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helper/constant.dart';

class InProgress extends StatelessWidget {
  String? orderIdText;
  String? customerName;
  String? tableNumber;
  double? widthContainer;
  Color? containerColor;

  InProgress({
    this.orderIdText,
    this.customerName,
    this.tableNumber,
    this.widthContainer,
    this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: containerColor ?? AppColor.greyColor.withOpacity(0.1)),
          child: Row(
            children: [
              Text(
                "${orderIdText}",
                style: GoogleFonts.inter().copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor),
              ),
              SizedBox(
                width: 120,
              ),
              Text(
                "${customerName}",
                style: GoogleFonts.inter().copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackColor),
              ),
              SizedBox(
                width: widthContainer,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 6),
                decoration: BoxDecoration(
                    color: AppColor.inProgressColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'Pending',
                  style: GoogleFonts.inter().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.inProgressColorText,
                  ),
                ),
              ),
              SizedBox(
                width: 100,
              ),
              Text(
                "Room no 1",
                style: GoogleFonts.inter().copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackColor),
              ),
              SizedBox(
                width: 85,
              ),
              Text(
                "${tableNumber}",
                style: GoogleFonts.inter().copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackColor),
              ),
              SizedBox(
                width: 120,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 6),
                decoration: BoxDecoration(
                    color: AppColor.blackColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'Open Details',
                  style: GoogleFonts.inter().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
              SizedBox(width: 28,)
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
        ),
        SizedBox()
      ],
    );
  }
}
