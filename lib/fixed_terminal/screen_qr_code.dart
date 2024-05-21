import 'package:flutter/material.dart';
import 'package:pos/helper/constant.dart';

class ScreenQrCode extends StatelessWidget {
  const ScreenQrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.fixedGreyColor,
      body: SafeArea(
        child: Center(
          child: Container(
            width: 537,
            height: 537,
            child: Image.asset('assets/images/QR Code.png'),
          ),
        ),
      ),
    );
  }
}
