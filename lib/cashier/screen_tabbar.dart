import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:pos/cashier/cashier_tab_bar_screen/order_screen.dart';
import 'package:pos/extention/padding_extention.dart';
import 'package:pos/helper/constant.dart';
import 'package:sizer/sizer.dart';

import 'cashier_tab_bar_screen/bills_screen.dart';
import 'cashier_tab_bar_screen/create_new_order.dart';
import 'cashier_tab_bar_screen/kitchen_staff.dart';
import 'cashier_tab_bar_screen/payment_screen.dart';

class ScreenTabBar extends StatelessWidget {
  const ScreenTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    var sidebarData = [
      {
        "icon": "assets/images/order progress.png",
        "title": "Order Progress",
        "layout": OrderScreen(),

      },
      {
        "icon": "assets/images/payment.png",
        "title": "Payments",
        "layout": PaymentScreen(),

      },
      {
        "icon": "assets/images/kitchen staff two.png",
        "title": "Bills",
        "layout": KitchenStaff(),

      },
      {
        "icon": "assets/images/bill.png",
        "title": "Kitchen Staff",
        "layout": BillsScreen(),

      },
      {
        "icon": "assets/images/create new order.png",
        "title": "Create new order",
        "layout": CreateNewOrder(),

      }
    ];

    var selectedSidebar = (sidebarData[0]).obs;

    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
              ),
              child: Column(
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/cashier logo.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Obx(() {
                    return Column(
                      children: sidebarData.map(
                        (e) {
                          return GestureDetector(
                            onTap: () {
                              selectedSidebar.value = e;
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: selectedSidebar.value == e
                                      ? AppColor.redColor.withOpacity(0.3)
                                      : Colors.transparent),
                              child: Row(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      e['icon'].toString(),
                                      color: selectedSidebar.value == e
                                          ? AppColor.redColor
                                          : AppColor.cashierSideBarColor,
                                    ),
                                    width: 13.sp,
                                    height: 15.sp,
                                  ).onlyPadding(left: 25),
                                  // Container(
                                  //   decoration: BoxDecoration(
                                  //     image: DecorationImage(
                                  //       image: AssetImage(
                                  //         e['icon'].toString(),
                                  //       ),
                                  //       fit: BoxFit.cover,
                                  //     ),
                                  //   ),
                                  //   width: 13.sp,
                                  //   height: 15.sp,
                                  //
                                  // ).onlyPadding(left: 25),
                                  Text(e['title'].toString()),
                                ],
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    );
                  })
                ],
              ),
            ),
            Obx(() {
              return Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Colors.green),
                child: selectedSidebar['layout'] as Widget?,
              );
            })
          ],
        ),
      ),
    );
  }
}
