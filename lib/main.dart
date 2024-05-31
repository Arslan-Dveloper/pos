import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/pos_waiter/for_desktop/pizza_for_desktop.dart';
import 'package:pos/pos_waiter/for_mobile/pizza.dart';
import 'package:pos/pos_waiter/for_tablet/pizza_for_tablet.dart';
import 'package:pos/responsive_layout.dart';
import 'package:pos/tablet/screen_new_order.dart';
import 'package:sizer/sizer.dart';
import 'fixed_terminal/alert_screen.dart';
import 'fixed_terminal/order_history_screen.dart';
import 'fixed_terminal/screen_fixed_terminal.dart';
import 'my_transform/practice_transform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // responsive layout
          // home: ResponsiveLayout(
          //   mobileScaffold: Pizza(),
          //   tabletScaffold: PizzaForTablet(),
          //   desktopScaffold: PizzaForDesktop(),
          // ),
          // home: PracticeTransform(),
          // home: ScreenFixedTerminal(),

          // screenOrder\
          //home: OrderHistoryScreen(),
          //screen Alert
           //home: AlertScreen(),
          // screen New Order
          home: ScreenNewOrder(),
        );
      },
    );
  }
}
