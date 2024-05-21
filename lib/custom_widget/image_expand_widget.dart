import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/extention/padding_extention.dart';
import 'package:sizer/sizer.dart';
import '../controller/fixed_terminal_controller.dart';
import '../helper/constant.dart';

class ImageExpandWidget extends StatelessWidget {
  VoidCallback? onTapImage;
  bool isExpandImage ;
  double?height;

  ImageExpandWidget({this.onTapImage, required this.isExpandImage,this.height,});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    var controller = Get.put(FixedTerminalController());
    return Obx(() {
      return GestureDetector(
        onTap: onTapImage,
        // onTap: () {
        //   controller.isExpand.value = !controller.isExpand.value;
        // },
        child: Container(
          width: 266,
          height: controller.isExpand.value ? 470 : 274,
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child:isExpandImage
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 13),
                    Container(
                        child: Image.asset('assets/images/rice one.png'),
                        width: 238,
                        height: 172),
                    SizedBox(height: 13),
                    Text(
                      'Thai Rice Bowl',
                      style: dmSansFont.copyWith(
                          fontSize: 8.sp, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 12),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Rs.850",
                            style: dmSansFont.copyWith(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: " /Bowl",
                            style: dmSansFont.copyWith(
                                fontSize: 4.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColor.greyColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Eggs',
                              style: dmSansFont.copyWith(
                                  fontSize: 6.sp, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  value: controller.firstText.value,
                                  onChanged: (value) {
                                    controller.firstText.value = value!;
                                  },
                                  activeColor: AppColor.redColor,
                                ),
                                Text(
                                  'Sunny Side Up',
                                  style: dmSansFont.copyWith(
                                      fontSize: 5.sp,
                                      color: AppColor.fixedGreyColor),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  value: controller.secondText.value,
                                  onChanged: (value) {
                                    controller.secondText.value = value!;
                                  },
                                  activeColor: AppColor.redColor,
                                ),
                                Text(
                                  'Over Medium',
                                  style: dmSansFont.copyWith(
                                      fontSize: 5.sp,
                                      color: AppColor.fixedGreyColor),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  value: controller.thirdText.value,
                                  onChanged: (value) {
                                    controller.thirdText.value = value!;
                                  },
                                  activeColor: AppColor.redColor,
                                ),
                                Text(
                                  'Over Hard',
                                  style: dmSansFont.copyWith(
                                      fontSize: 5.sp,
                                      color: AppColor.fixedGreyColor),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Spicy Level',
                              style: dmSansFont.copyWith(
                                  fontSize: 6.sp, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  value: controller.secondFirstText.value,
                                  onChanged: (value) {
                                    controller.secondFirstText.value = value!;
                                  },
                                  activeColor: AppColor.redColor,
                                ),
                                Text(
                                  'Mild',
                                  style: dmSansFont.copyWith(
                                      fontSize: 5.sp,
                                      color: AppColor.fixedGreyColor),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  value: controller.secondSecondText.value,
                                  onChanged: (value) {
                                    controller.secondSecondText.value = value!;
                                  },
                                  activeColor: AppColor.redColor,
                                ),
                                Text(
                                  'Medium',
                                  style: dmSansFont.copyWith(
                                      fontSize: 5.sp,
                                      color: AppColor.fixedGreyColor),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  value: controller.secondThirdText.value,
                                  onChanged: (value) {
                                    controller.secondThirdText.value = value!;
                                  },
                                  activeColor: AppColor.redColor,
                                ),
                                Text(
                                  'Extra Hot',
                                  style: dmSansFont.copyWith(
                                      fontSize: 5.sp,
                                      color: AppColor.fixedGreyColor),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 237,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColor.redColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Add to billing',
                          style: dmSansFont.copyWith(
                              fontSize: 6.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColor.whiteColor),
                        ),
                      ),
                    )
                  ],
                ).onlyPadding(left: 12)
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 13),
                    Container(
                        child: Image.asset('assets/images/rice one.png'),
                        width: 238,
                        height: 172),
                    SizedBox(height: 13),
                    Text(
                      'Thai Rice Bowl',
                      style: dmSansFont.copyWith(
                          fontSize: 8.sp, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 13),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Rs.850",
                            style: dmSansFont.copyWith(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: " /Bowl",
                            style: dmSansFont.copyWith(
                                fontSize: 4.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColor.greyColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ).onlyPadding(left: 12),
        ),
      );
    });
  }
}
