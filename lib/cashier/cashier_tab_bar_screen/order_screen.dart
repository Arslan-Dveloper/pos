import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/extention/padding_extention.dart';
import 'package:sizer/sizer.dart';
import '../../controller/cashier_controller.dart';
import '../../custom_widget/custom_app_bar.dart';
import '../../helper/constant.dart';
import 'Order/All_Order.dart';
import 'Order/Complete_Order.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = [
      "All Orders",
      "Pending orders",
      "Completed orders",
      "Cancelled Orders",
      "Take away",
      "Delivery Orders",
    ];

    var selectText = ["1", "2", "Next", "End"];
    var select = selectText[0].obs;
    var controller = Get.put(CashierControllerWindow());
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: AppColor.cashierBackGroundColor,
        appBar: CustomAppBar(
          appBarColor: AppColor.whiteColor,
          actionList: [
            Container(
              width: 200,
              child: ListTile(
                leading: Container(
                  width: 18.sp,
                  height: 18.sp,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/cashier image.png",),fit: BoxFit.contain
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
            bottom: BorderSide(color: AppColor.cashierBorderColor, width: 1),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Orders",
                  style: interFont.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  width: 360,
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColor.whiteColor,
                      contentPadding: EdgeInsets.only(top: 5),
                      hintText: "Search order",
                      prefixIcon: Image.asset(
                        "assets/images/search icon cashier.png",
                        scale: 3,
                      ),
                      hintStyle: interFont.copyWith(
                          fontSize: 7.sp, fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: AppColor.cashierBorderColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelColor: AppColor.redColor,
                indicatorColor: AppColor.redColor,
                physics: BouncingScrollPhysics(),
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                // labelPadding: EdgeInsets.only(bottom: 15),
                tabs: text
                    .map(
                      (e) =>
                      Tab(
                        child: Row(
                          children: [
                            Text(
                              e,
                              style: interFont.copyWith(
                                fontSize: 6.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox()
                          ],
                        ),
                      ),
                )
                    .toList(),
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  AllOrder(),
                  SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(
                          label: Obx(() {
                            return Checkbox(
                              value: controller.isTrueOneMAin.value,
                              onChanged: (value) {
                                controller.isTrueOneMAin.value = value!;
                              },
                            );
                          }),
                        ),
                        DataColumn(
                          label: Text(
                            "Order ID.",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Customer name",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Status",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Area",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Table",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Bill",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Order Price",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Order Type",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                      rows: [
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            DataCell(
                              Obx(() {
                                return Checkbox(
                                  value: controller.isTrueOne.value,
                                  onChanged: (value) {
                                    controller.isTrueOne.value = value!;
                                  },
                                );
                              }),
                            ),
                            DataCell(
                              Text(
                                "#CR0001",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.cashierContainerColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Completed",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.cashierTextColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Room no 1",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "06",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Cash",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "On Table",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Obx(() {
                                return Checkbox(
                                  value: controller.isTrueTwo.value,
                                  onChanged: (value) {
                                    controller.isTrueTwo.value = value!;
                                  },
                                );
                              }),
                            ),
                            DataCell(
                              Text(
                                "#CR0002",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Raheel",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor
                                      .cashierPendingContainerColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "pending",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor
                                            .cashierPendingTextColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Hall",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "05",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Parcel",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            DataCell(
                              Obx(() {
                                return Checkbox(
                                  value: controller.isTrueThree.value,
                                  onChanged: (value) {
                                    controller.isTrueThree.value = value!;
                                  },
                                );
                              }),
                            ),
                            DataCell(
                              Text(
                                "#CR0003",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Tasawar",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor
                                      .cashierPendingContainerColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "pending",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor
                                            .cashierPendingTextColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Ground Floor",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "25",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "On Table",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Obx(() {
                                return Checkbox(
                                  value: controller.isTrueFour.value,
                                  onChanged: (value) {
                                    controller.isTrueFour.value = value!;
                                  },
                                );
                              }),
                            ),
                            DataCell(
                              Text(
                                "#CR0004",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Hamza",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.cashierContainerColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Completed",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.cashierTextColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Roof",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "32",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Online pay",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Parcel",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            DataCell(
                              Obx(() {
                                return Checkbox(
                                  value: controller.isTrueFive.value,
                                  onChanged: (value) {
                                    controller.isTrueFive.value = value!;
                                  },
                                );
                              }),
                            ),
                            DataCell(
                              Text(
                                "#CR0005",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor
                                      .cashierPendingContainerColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "pending",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor
                                            .cashierPendingTextColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Hall",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "16",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Parcel",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Obx(() {
                                return Checkbox(
                                  value: controller.isTrueSix.value,
                                  onChanged: (value) {
                                    controller.isTrueSix.value = value!;
                                  },
                                );
                              }),
                            ),
                            DataCell(
                              Text(
                                "#CR0006",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Raheel Baloch",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.redColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Cancelled",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Room no 1",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "16",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "On Table",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            DataCell(
                              Obx(() {
                                return Checkbox(
                                  value: controller.isTrueSeven.value,
                                  onChanged: (value) {
                                    controller.isTrueSeven.value = value!;
                                  },
                                );
                              }),
                            ),
                            DataCell(
                              Text(
                                "#CR0007",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Safullah",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor
                                      .cashierPendingContainerColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "pending",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor
                                            .cashierPendingTextColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Ground floor",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "29",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Parcel",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                      showBottomBorder: true,
                      border: TableBorder(
                          bottom: BorderSide(color: Colors.transparent)),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            )),
                        color: AppColor.whiteColor,
                      ),
                      dividerThickness: 0,
                      checkboxHorizontalMargin: 0,
                      horizontalMargin: 5,
                    ),
                  ),
                  CompletOrder(),
                  SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(
                          label: Text(
                            "Order ID.",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Customer name",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Status",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Area",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Table",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Bill",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Order Price",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Reason",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                      rows: [
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            DataCell(
                              Text(
                                "#CR0001",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.redColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Cancelled",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Room no 1",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "06",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Cash",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 76,
                                height: 34,
                                decoration: BoxDecoration(color: AppColor.blackColor,borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Reason",
                                    style: interFont.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,color: AppColor.whiteColor
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [

                            DataCell(
                              Text(
                                "#CR0002",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Raheel",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.redColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Cancelled",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Hall",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "05",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 76,
                                height: 34,
                                decoration: BoxDecoration(color: AppColor.blackColor,borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Reason",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,color: AppColor.whiteColor
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [

                            DataCell(
                              Text(
                                "#CR0003",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Tasawar",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.redColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Cancelled",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Ground Floor",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "25",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 76,
                                height: 34,
                                decoration: BoxDecoration(color: AppColor.blackColor,borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Reason",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,color: AppColor.whiteColor
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [

                            DataCell(
                              Text(
                                "#CR0004",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Hamza",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.redColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Cancelled",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Roof",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "32",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Online pay",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 76,
                                height: 34,
                                decoration: BoxDecoration(color: AppColor.blackColor,borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Reason",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,color: AppColor.whiteColor
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [

                            DataCell(
                              Text(
                                "#CR0005",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.redColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Cancelled",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Hall",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "16",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 76,
                                height: 34,
                                decoration: BoxDecoration(color: AppColor.blackColor,borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Reason",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,color: AppColor.whiteColor
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [

                            DataCell(
                              Text(
                                "#CR0006",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Raheel Baloch",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.redColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Cancelled",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Room no 1",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "16",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 76,
                                height: 34,
                                decoration: BoxDecoration(color: AppColor.blackColor,borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Reason",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,color: AppColor.whiteColor
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            
                            DataCell(
                              Text(
                                "#CR0007",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Safullah",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.redColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Cancelled",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Ground floor",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "29",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 76,
                                height: 34,
                                decoration: BoxDecoration(color: AppColor.blackColor,borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Reason",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,color: AppColor.whiteColor
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                      showBottomBorder: true,
                      border: TableBorder(
                          bottom: BorderSide(color: Colors.transparent)),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            )),
                        color: AppColor.whiteColor,
                      ),
                      dividerThickness: 0,
                      checkboxHorizontalMargin: 0,

                    ),
                  ),
                  SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(
                            label: Text(
                              "Order ID.",
                              style: interFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            numeric: true),
                        DataColumn(
                          label: Text(
                            "Customer name",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Status",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Area",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Table",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Bill",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Order Price",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                      rows: [
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            DataCell(
                              Text(
                                "#CR0001",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 55,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.greenColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Parcel",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Room no 1",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "06",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Cash",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text(
                                "#CR0002",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Raheel",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 55,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.greenColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Parcel",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Hall",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "05",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            DataCell(
                              Text(
                                "#CR0003",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Tasawar",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 55,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.greenColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Parcel",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Ground Floor",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "25",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text(
                                "#CR0004",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Hamza",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 55,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.greenColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Parcel",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Roof",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "32",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Online pay",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            DataCell(
                              Text(
                                "#CR0005",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 55,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.greenColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Parcel",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Hall",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "16",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text(
                                "#CR0006",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Raheel Baloch",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 55,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.greenColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Parcel",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Room no 1",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "16",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            DataCell(
                              Text(
                                "#CR0007",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Safullah",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 55,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.greenColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Parcel",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Ground floor",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "29",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Pending",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      showBottomBorder: false,
                      border: TableBorder(
                          bottom: BorderSide(color: Colors.transparent)),
                      decoration: BoxDecoration(
                        border:
                        Border(bottom: BorderSide(color: Colors.transparent)),
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      horizontalMargin: 80,
                      dividerThickness: 0,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: [
                        DataColumn(
                            label: Text(
                              "Order ID.",
                              style: interFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            numeric: true),
                        DataColumn(
                          label: Text(
                            "Customer name",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Status",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Customer Contact",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Delivery Boy",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Delivery Boy Contact",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Bill",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Order Price",
                            style: interFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                      rows: [
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            DataCell(
                              Text(
                                "#CR0001",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 60,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.yellowColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Pending",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "03060801685",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "03060801685",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Cash on delivery",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text(
                                "#CR0002",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Raheel",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 60,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.greenColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "On Way",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "03060801685",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "03060801685",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Cash on delivery",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            DataCell(
                              Text(
                                "#CR0003",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Tasawar",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 60,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.yellowColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Pending",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "03060801685",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "03060801685",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Cash on delivery",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text(
                                "#CR0004",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Hamza",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 60,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.greenColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "On Way",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "03060801685",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "03060801685",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Cash on delivery",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            DataCell(
                              Text(
                                "#CR0005",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 60,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.yellowColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Pending",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "03060801685",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "03060801685",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Cash on delivery",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text(
                                "#CR0006",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Raheel Baloch",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 60,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.greenColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "On Way",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "03060801685",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "03060801685",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Cash on delivery",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          color: WidgetStatePropertyAll(
                              AppColor.cashierBackGroundColor),
                          cells: [
                            DataCell(
                              Text(
                                "#CR0007",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Safullah",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Container(
                                width: 60,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColor.greenColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "On Way",
                                    style: interFont.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Ground floor",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Muhammad Ali",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "03060801685",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Cash on delivery",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                "Rs.1850",
                                style: interFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      showBottomBorder: false,
                      border: TableBorder(
                          horizontalInside:
                          BorderSide(color: Colors.transparent,width: 0,strokeAlign: 0)),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0, color: Colors.transparent),
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      horizontalMargin: 10,
                      dividerThickness: 0,
                    ),
                  )
                ],
              ).onlyPadding(top: 20),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Text(
                  "Showing",
                  style: interFont.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColor.greyColor),
                  ),
                  child: Obx(() {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "${controller.selectNumber.value}",
                          style: interFont.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        DropdownButton(
                          onChanged: (value) {
                            controller.selectNumber.value = value!;
                          },
                          underline: SizedBox(),
                          items: CashierControllerWindow.numberList.map(
                                (e) {
                              return DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              );
                            },
                          ).toList(),
                        )
                      ],
                    );
                  }),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "items per page",
                  style: interFont.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.greyColor),
                ),
                SizedBox(width: 500,),
                Obx(() {
                  return Row(
                    children: selectText.map(
                          (e) {
                        return GestureDetector(
                          onTap: () {
                            select.value = e;
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: select.value == e
                                  ? AppColor.whiteColor
                                  : Colors.transparent,
                              border: Border.all(
                                color: select.value == e
                                    ? AppColor.redColor
                                    : Colors.transparent,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                e.toString(),
                              ),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  );
                })
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ).onlyPadding(left: 20, right: 20),
      ),
    );
  }
}




