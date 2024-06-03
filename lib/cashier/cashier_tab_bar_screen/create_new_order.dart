import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/extention/padding_extention.dart';
import 'package:sizer/sizer.dart';

import '../../controller/cashier_controller.dart';
import '../../controller/fixed_terminal_controller.dart';
import '../../custom_widget/custom_app_bar.dart';
import '../../helper/constant.dart';

class CreateNewOrder extends StatelessWidget {
  const CreateNewOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CashierControllerWindow());
    var controllerFixed = Get.put(FixedTerminalController());
    return Scaffold(
      backgroundColor: AppColor.cashierBackGroundColor,
      appBar: CustomAppBar(
        appBarColor: AppColor.whiteColor,
        tollBarHeight: 100,
        actionList: [
          Container(
            width: 200,
            child: ListTile(
              leading: Container(
                width: 18.sp,
                height: 18.sp,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/cashier image.png",
                      ),
                      fit: BoxFit.contain),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Create new order",
              style:
              interFont.copyWith(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Customer name",
                      style: interFont.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      width: 320,
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColor.whiteColor,
                          contentPadding: EdgeInsets.only(top: 5, left: 20),
                          hintText: "Muhammad Ali",
                          hintStyle: TextStyle(
                              fontFamily: "sego",
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColor.blackColor.withOpacity(0.10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColor.blackColor.withOpacity(0.10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColor.blackColor.withOpacity(0.10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phone number",
                      style: interFont.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      width: 320,
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColor.whiteColor,
                          contentPadding: EdgeInsets.only(top: 5, left: 20),
                          hintText: "03080801585",
                          hintStyle: TextStyle(
                              fontFamily: "sego",
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColor.blackColor.withOpacity(0.10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColor.blackColor.withOpacity(0.10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColor.blackColor.withOpacity(0.10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order type",
                      style: interFont.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      width: 227,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.whiteColor,
                          border: Border.all(
                              color: AppColor.blackColor.withOpacity(0.12))),
                      child: Obx(() {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "${controller.selectText.value}",
                              style: TextStyle(
                                  fontFamily: "sego",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            DropdownButton(
                              underline: SizedBox(),
                              icon: Container(
                                padding: EdgeInsets.all(15),
                                child: Image.asset(
                                    "assets/images/drop down arrow.png"),
                              ),
                              items: CashierControllerWindow.textList.map(
                                    (e) {
                                  return DropdownMenuItem(
                                    child: Text(e),
                                    value: e,
                                  );
                                },
                              ).toList(),
                              onChanged: (value) {
                                controller.selectText.value = value!;
                              },
                            )
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 31,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Customer name",
                      style: interFont.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      width: 538,
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColor.whiteColor,
                          contentPadding: EdgeInsets.only(left: 20),
                          hintText:
                          "Kalma Chock Bypass Multan Road Layyah, Nazar Son’s Pharmacy",
                          hintStyle: TextStyle(
                              fontFamily: "sego",
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColor.blackColor.withOpacity(0.10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColor.blackColor.withOpacity(0.10),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColor.blackColor.withOpacity(0.10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order type",
                      style: interFont.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      width: 227,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.whiteColor,
                          border: Border.all(
                              color: AppColor.blackColor.withOpacity(0.12))),
                      child: Obx(() {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "${controller.selectTextTwo.value}",
                              style: TextStyle(
                                  fontFamily: "sego",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            DropdownButton(
                              underline: SizedBox(),
                              icon: Container(
                                padding: EdgeInsets.all(15),
                                child: Image.asset(
                                    "assets/images/drop down arrow.png"),
                              ),
                              items: CashierControllerWindow.textListTwo.map(
                                    (e) {
                                  return DropdownMenuItem(
                                    child: Text(e),
                                    value: e,
                                  );
                                },
                              ).toList(),
                              onChanged: (value) {
                                controller.selectTextTwo.value = value!;
                              },
                            )
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 126,
              child: ListView.builder(
                itemCount: controllerFixed.images.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Obx(() {
                      return GestureDetector(
                        onTap: () {
                          controllerFixed.selectedIndex.value = index;
                        },
                        child: Container(
                          width: 102,
                          height: 126,
                          decoration: BoxDecoration(
                              color:
                              controllerFixed.selectedIndex.value == index
                                  ? AppColor.redColor.withOpacity(0.1)
                                  : AppColor.whiteColor,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                  color: controllerFixed.selectedIndex.value ==
                                      index
                                      ? AppColor.redColor
                                      : Colors.transparent)),
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Container(
                                height: 40,
                                width: 40,
                                child: Image.asset(
                                  '${controllerFixed.images[index]}',
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                '${controllerFixed.text[index]}',
                                style: dmSansFont.copyWith(
                                  fontSize:
                                  controllerFixed.selectedIndex.value ==
                                      index
                                      ? 7.sp
                                      : 6.sp,
                                  fontWeight: FontWeight.w400,
                                  color: controllerFixed.selectedIndex.value ==
                                      index
                                      ? AppColor.redColor
                                      : AppColor.fixedGreyColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "Pizzas List",
              style: dmSansFont.copyWith(
                  fontSize: 24, fontWeight: FontWeight.w700),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() {
                  return Checkbox(
                    value: controller.isTrue.value,
                    onChanged: (value) {
                      controller.isTrue.value = value!;
                    },
                  );
                }),
                Container(
                  width: 1000,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.whiteColor),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/pizza new order.png"),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Pepperoni Pizza",
                            style: dmSansFont.copyWith(
                                fontWeight: FontWeight.w700, fontSize: 26),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Rs.",
                                    style: dmSansFont.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.greyColor)),
                                TextSpan(
                                    text: "850/",
                                    style: dmSansFont.copyWith(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.redColor))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(

                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Size',
                                    style: TextStyle(
                                        fontFamily: "sego",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 128,
                                    height: 55,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 2,
                                          color: AppColor.blackColor
                                              .withOpacity(0.12),
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    child: Obx(() {
                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            '${controller.selectedPizzaText
                                                .value}',
                                            style: TextStyle(
                                                fontFamily: "sego",
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          DropdownButton(
                                            underline: SizedBox(),
                                            items: CashierControllerWindow
                                                .pizzaText
                                                .map(
                                                  (e) {
                                                return DropdownMenuItem(
                                                  child: Text(e),
                                                  value: e,
                                                );
                                              },
                                            ).toList(),
                                            onChanged: (value) {
                                              controller.selectedPizzaText
                                                  .value = value!;
                                            },
                                            icon: Container(
                                              child: Image.asset(
                                                "assets/images/drop down arrow.png",
                                                scale: 3,
                                                color: AppColor.blackColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    }),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Other',
                                    style: TextStyle(
                                        fontFamily: "sego",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 300,
                                    height: 55,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 2,
                                          color: AppColor.blackColor
                                              .withOpacity(0.12),
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    child: Obx(() {
                                      return Row(
                                        children: [
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            '${controller
                                                .selectedStringPizzaText
                                                .value}',
                                            style: TextStyle(
                                                fontFamily: "sego",
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          DropdownButton(
                                            underline: SizedBox(),
                                            items: CashierControllerWindow
                                                .pizzaStringText
                                                .map(
                                                  (e) {
                                                return DropdownMenuItem(
                                                  child: Text(e),
                                                  value: e,
                                                );
                                              },
                                            ).toList(),
                                            onChanged: (value) {
                                              controller.selectedStringPizzaText
                                                  .value = value!;
                                            },
                                            icon: Container(
                                              child: Image.asset(
                                                "assets/images/drop down arrow.png",
                                                scale: 3,
                                                color: AppColor.blackColor,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                        ],
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                      );
                                    }),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap:(){
                              if (controller.number.value>0) {
                                controller.number.value--;
                              }
                            },
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: AppColor.greyColor.withOpacity(0.5),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/minus.png", scale: 8,),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Obx(() {
                            return Text("${controller.number.value}",
                              style: dmSansFont.copyWith(
                                  fontSize: 20, fontWeight: FontWeight.w400),);
                          }),
                          SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){
                              controller.number.value++;
                            },
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: AppColor.redColor,
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/add.png", scale: 4,),
                              ),
                            ),
                          )
                        ],
                      ).onlyPadding(left: 170, top: 15)
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() {
                  return Checkbox(
                    value: controller.isTrue.value,
                    onChanged: (value) {
                      controller.isTrue.value = value!;
                    },
                  );
                }),
                Container(
                  width: 1000,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.whiteColor),
                ),
              ],
            )
          ],
        ).onlyPadding(left: 30),
      ),
    );
  }
}
