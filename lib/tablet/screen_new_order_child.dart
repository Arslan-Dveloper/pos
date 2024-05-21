import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/extention/padding_extention.dart';
import 'package:pos/tab_controller/controller_file.dart';

import '../helper/constant.dart';
import 'custom/custom_order_container.dart';

class ScreenNewOrderChild extends StatelessWidget {
  const ScreenNewOrderChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(TabletController());
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 20,),
              Text(
                'Order ID.',
                style: GoogleFonts.inter().copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                'Customer name',
                style: GoogleFonts.inter().copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 100,
              ),
              Text(
                'Status',
                style: GoogleFonts.inter().copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Text(
                'Set time taking',
                style: GoogleFonts.inter().copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 380,
              ),
              Text(
                'Order items',
                style: GoogleFonts.dmSans().copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 88,
              ),
              Text(
                'Submission',
                style: GoogleFonts.dmSans().copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Divider(
            endIndent: 360,height: 0,
          ),
          CustomOrderRow(orderNumber: "#CR0001",nameCustomer: "Muhammad Ali",widthContainer: 110,),
          CustomOrderRow(orderNumber: "#CR0002",nameCustomer: "Raheel",containerColor: Colors.transparent,widthContainer: 162,),
          CustomOrderRow(orderNumber: "#CR0002",nameCustomer: "Tasawar",widthContainer: 150),
          CustomOrderRow(orderNumber: "#CR0002",nameCustomer: "Hamza",containerColor: Colors.transparent,widthContainer: 160),
          CustomOrderRow(orderNumber: "#CR0002",nameCustomer: "Muhammad Ali",widthContainer: 107,),
          CustomOrderRow(orderNumber: "#CR0001",nameCustomer: "Raheel Baloch",containerColor: Colors.transparent,widthContainer: 112,),
          CustomOrderRow(orderNumber: "#CR0002",nameCustomer: "Safullah",widthContainer: 150,),
          CustomOrderRow(orderNumber: "#CR0002",nameCustomer: "Raheel",containerColor: Colors.transparent,widthContainer: 159,),
          CustomOrderRow(orderNumber: "#CR0002",nameCustomer: "Tasawar",widthContainer: 148,),
          CustomOrderRow(orderNumber: "#CR0002",nameCustomer: "Hamza",containerColor: Colors.transparent,widthContainer: 160),
          CustomOrderRow(orderNumber: "#CR0001",nameCustomer: "Muhammad Ali",widthContainer: 107,),
        ],
      ),
    ).onlyPadding(left: 30, top: 46);
  }
}


