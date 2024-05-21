import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/extention/padding_extention.dart';
import '../../helper/constant.dart';
import '../../tab_controller/controller_file.dart';

class CustomOrderRow extends StatelessWidget {

  String?orderNumber;
  String?nameCustomer;
  Color?containerColor;
  double?widthContainer;

  CustomOrderRow({
    super.key,
    // required this.controller,
    this.orderNumber,
    this.nameCustomer,
    this.containerColor,
    this.widthContainer,
  });

  // final TabletController controller;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(TabletController());
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
          // padding: EdgeInsets.only(left:10,right: 10,bottom: 8 ),
          color: containerColor ?? AppColor.greyColor.withOpacity(0.1),
          child: Row(
            children: [
              Text(
                "${orderNumber}",
                style: GoogleFonts.inter().copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor),
              ),
              SizedBox(
                width: 67,
              ),
              Text(
                "${nameCustomer}",
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
                EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                decoration: BoxDecoration(
                    color: AppColor.greenColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "New",
                  style: GoogleFonts.inter().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Obx(() {
                return Container(
                  width: 200,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColor.whiteColor,
                      border: Border.all(
                        color: AppColor.blackColor.withOpacity(0.12),
                      )),
                  child: Row(
                    children: [
                      Text("${controller.time.value}")
                          .onlyPadding(left: 10),
                      DropdownButton(
                        icon: Icon(Icons.keyboard_arrow_down_outlined)
                            .onlyPadding(left: 55),
                        underline: SizedBox(),
                        onChanged: (value) {
                          controller.time.value = value!;
                        },
                        items: TabletController.allTime.map((e) {
                          return DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          );
                        }).toList(),
                      )
                    ],
                  ),
                );
              }),
              SizedBox(
                width: 30,
              ),
              Obx(() {
                return Container(
                  width: 200,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColor.whiteColor,
                      border: Border.all(
                        color: AppColor.blackColor.withOpacity(0.12),
                      )),
                  child: Row(
                    children: [
                      Text("${controller.timeTwo.value}")
                          .onlyPadding(left: 10),
                      DropdownButton(
                        icon: Icon(Icons.keyboard_arrow_down_outlined)
                            .onlyPadding(left: 55),
                        underline: SizedBox(),
                        onChanged: (value) {
                          controller.timeTwo.value = value!;
                        },
                        items: TabletController.allTimeTwo.map((e) {
                          return DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          );
                        }).toList(),
                      )
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
        SizedBox(width: 36,),
        Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 6),
          decoration: BoxDecoration(
              color: AppColor.blackColor, borderRadius: BorderRadius.circular(5)
          ),
          child: Text(
            'Open Details',
            style: GoogleFonts.inter().copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColor.whiteColor,
            ),
          ),
        ),
        SizedBox(width: 63,),
        Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 6),
          decoration: BoxDecoration(
              color: AppColor.redColor, borderRadius: BorderRadius.circular(5)
          ),
          child: Text(
            'Submit',
            style: GoogleFonts.inter().copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColor.whiteColor,
            ),
          ),
        )
      ],
    );
  }
}