import 'package:flutter/material.dart';

import '../../../helper/constant.dart';


class AllOrder extends StatelessWidget {
  const AllOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    color: AppColor.cashierPendingContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "pending",
                      style: interFont.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color:
                          AppColor.cashierPendingTextColor),
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
                  width: 100,
                  height: 25,
                  decoration: BoxDecoration(
                    color: AppColor.cashierPendingContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "pending",
                      style: interFont.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color:
                          AppColor.cashierPendingTextColor),
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
                    color: AppColor.cashierPendingContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "pending",
                      style: interFont.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color:
                          AppColor.cashierPendingTextColor),
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
                    color: AppColor.cashierPendingContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "pending",
                      style: interFont.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color:
                          AppColor.cashierPendingTextColor),
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
            horizontalInside:
            BorderSide(color: Colors.transparent)),
        decoration: BoxDecoration(
          border: Border.all(width: 0, color: Colors.transparent),
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        horizontalMargin: 80,
        dividerThickness: 0,
      ),
    );
  }
}